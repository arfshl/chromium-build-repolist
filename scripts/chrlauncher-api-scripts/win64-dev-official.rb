require 'json'
require 'fileutils'
require 'net/http'
require 'uri'
require 'base64'

# ==========================================
# 1. PATHS
# ==========================================
DATA_FILE = File.expand_path(File.join(__dir__, '..', 'links_data.json'))
OUTPUT_DIR = File.expand_path(File.join(__dir__, '..', '..', 'api'))
OUTPUT_FILE = File.join(OUTPUT_DIR, 'win64-dev-official')

FileUtils.mkdir_p(OUTPUT_DIR)

# ==========================================
# 2. LOAD JSON
# ==========================================
unless File.exist?(DATA_FILE)
  abort "Error: #{DATA_FILE} not found!"
end

current_data = JSON.parse(File.read(DATA_FILE))

download_url = current_data.dig('google', 'Win_x64_archive')

if download_url.nil? || download_url.empty?
  abort "Error: google.Win_x64_archive not found!"
end

# ==========================================
# 3. EXTRACT REVISION
# ==========================================
# Example:
# https://storage.googleapis.com/chromium-browser-snapshots/Win_x64/1650031/chrome-win.zip

revision = download_url[/Win_x64\/(\d+)\//, 1] || "unknown"

repository_url =
  "https://storage.googleapis.com/chromium-browser-snapshots/index.html?prefix=Win_x64/#{revision}/"

# ==========================================
# 4. FETCH COMMIT HASH FROM CR-REV API
# ==========================================
commit_hash = ""
version = "unknown"

if revision != "unknown"
  begin
    api_uri = URI(
      "https://cr-rev.appspot.com/_ah/api/crrev/v1/redirect/#{revision}"
    )

    response = Net::HTTP.get_response(api_uri)

    if response.code == "200"
      json = JSON.parse(response.body)

      commit_hash = json["git_sha"] || ""
    else
      puts "Warning: CR-REV API returned #{response.code}"
    end

  rescue => e
    puts "Warning: Failed to fetch commit hash"
    puts e.message
  end
end

# ==========================================
# 5. FETCH VERSION FROM GITILES
# ==========================================
if !commit_hash.empty?
  begin
    version_uri = URI(
      "https://chromium.googlesource.com/chromium/src/+/#{commit_hash}/chrome/VERSION?format=TEXT"
    )

    response = Net::HTTP.get_response(version_uri)

    if response.code == "200"
      content = Base64.decode64(response.body)

      major = content[/^MAJOR=(\d+)/, 1] || "0"
      minor = content[/^MINOR=(\d+)/, 1] || "0"
      build = content[/^BUILD=(\d+)/, 1] || "0"
      patch = content[/^PATCH=(\d+)/, 1] || "0"

      version = "#{major}.#{minor}.#{build}.#{patch}"
    else
      puts "Warning: VERSION file returned #{response.code}"
    end

  rescue => e
    puts "Warning: Failed to fetch version"
    puts e.message
  end
end

# ==========================================
# 6. BUILD API PAYLOAD
# ==========================================
api_data = {
  "browser"      => "chromium",
  "os"           => "windows",
  "architecture" => "64-bit",
  "timestamp"    => Time.now.to_i.to_s,
  "editor"       => "The Chromium Authors",
  "channel"      => "dev",
  "repository"   => repository_url,
  "download"     => download_url,
  "version"      => version,
  "revision"     => revision,
  "commit"       => commit_hash
}

api_string = api_data.map { |k, v| "#{k}=#{v}" }.join(';')

# ==========================================
# 7. WRITE FILE
# ==========================================
File.write(OUTPUT_FILE, api_string)

# ==========================================
# 8. OUTPUT
# ==========================================
puts "=== CHROMIUM WIN64 API GENERATOR ==="
puts "Output file : #{OUTPUT_FILE}"
puts "Revision    : #{revision}"
puts "Commit hash : #{commit_hash}"
puts "Version     : #{version}"
puts
puts api_string