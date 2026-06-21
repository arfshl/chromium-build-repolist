require 'json'
require 'fileutils'

# 1. Define paths relative to this script's location (scripts/api-scripts/hibbiki_win64.rb)
# __dir__ is "scripts/api-scripts"
DATA_FILE = File.expand_path(File.join(__dir__, '..', 'links_data.json'))

# Target output: api/win64-stable-codecs-sync
OUTPUT_DIR = File.expand_path(File.join(__dir__, '..', '..', 'api'))
OUTPUT_FILE = File.join(OUTPUT_DIR, 'win64-stable-codecs-sync')

# Ensure the target 'api' directory exists
FileUtils.mkdir_p(OUTPUT_DIR)

# 2. Read and parse the JSON data from the scripts folder
if File.exist?(DATA_FILE)
  current_data = JSON.parse(File.read(DATA_FILE))
else
  puts "Error: Source file not found at #{DATA_FILE}!"
  puts "Please run your GitHub fetcher script first."
  exit
end

# Fetch the download URL for Hibbiki win64 archive from the JSON
download_url = current_data.dig('github', 'hibbiki_win64_archive') || "https://github.com/Hibbiki/chromium-win64"

# ==========================================
# 3. EXTRACT DATA VIA REGEX
# ==========================================
# Example URL: https://github.com/Hibbiki/chromium-win64/releases/download/v149.0.7827.156-r1625079/chrome.7z
# Captures version (149.0.7827.156) and revision (1625079)
version = "unknown"
revision = "unknown"
tag_version = "unknown"

if download_url =~ /v([\d\.]+)-r(\d+)/
  version     = $1  # Extracts 149.0.7827.156
  revision    = $2  # Extracts 1625079
  tag_version = "v#{version}-r#{revision}"
end

# Reconstruct the specific Repository/Release Tag URL for Hibbiki
repository_url = "https://github.com/Hibbiki/chromium-win64/releases/tag/#{tag_version}"

# ==========================================
# 4. BUILD THE API FORMAT (Semi-Colon Separated)
# ==========================================
api_data = {
  "browser"      => "chromium",
  "os"           => "windows",
  "architecture" => "64-bit",
  "timestamp"    => Time.now.to_i.to_s, # Dynamic Unix timestamp
  "editor"       => "Hibbiki",
  "channel"      => "stable",
  "repository"   => repository_url,
  "download"     => download_url,
  "version"      => version,
  "revision"     => revision,
  "commit"       => "" # Left empty as per your specification
}

# Map keys and values into: key=value;key=value
api_string = api_data.map { |k, v| "#{k}=#{v}" }.join(';')

# ==========================================
# 5. WRITE THE OUTPUT TO api/win64-stable-codecs-sync
# ==========================================
File.write(OUTPUT_FILE, api_string)

puts "=== HIBBIKI WIN64 API GENERATOR ==="
puts "Successfully generated static API at: #{OUTPUT_FILE}"
puts "Data payload:\n#{api_string}"