# This script is licensed under GPLv3

require 'json'
require 'fileutils'

# 1. Define paths relative to this script's location (scripts/api-scripts/file.rb)
# __dir__ is "scripts/api-scripts"
# To reach "scripts/links_data.json", go up 1 level
DATA_FILE = File.expand_path(File.join(__dir__, '..', 'links_data.json'))

# To reach the root project and go to "api/win64-dev-avx2", go up 2 levels
OUTPUT_DIR = File.expand_path(File.join(__dir__, '..', '..', 'api'))
OUTPUT_FILE = File.join(OUTPUT_DIR, 'win64-dev-avx2')

# Ensure the target 'api' directory exists, create it if it doesn't
FileUtils.mkdir_p(OUTPUT_DIR)

# 2. Read and parse the JSON data from the scripts folder
if File.exist?(DATA_FILE)
  current_data = JSON.parse(File.read(DATA_FILE))
else
  puts "Error: Source file not found at #{DATA_FILE}!"
  puts "Please run your GitHub fetcher script first."
  exit
end

# Fetch the download URL for RobRich win64 avx2 archive from the JSON
download_url = current_data.dig('github', 'robrich_win64_archive_avx2') || "https://github.com/RobRich999/Chromium_Clang"

# ==========================================
# 3. EXTRACT DATA VIA REGEX
# ==========================================
# Example URL: https://github.com/RobRich999/Chromium_Clang/releases/download/v151.0.7874.0-r1641382-win64-avx2/chrome.zip
# Captures version (151.0.7874.0) and revision (1641382)
version = "unknown"
revision = "unknown"
tag_version = "unknown"

if download_url =~ /v([\d\.]+)-r(\d+)/
  version     = $1  # Extracts 151.0.7874.0
  revision    = $2  # Extracts 1641382
  tag_version = "v#{version}-r#{revision}-win64-avx2"
end

# Reconstruct the specific Repository/Release Tag URL
repository_url = "https://github.com/RobRich999/Chromium_Clang/releases/tag/#{tag_version}"

# ==========================================
# 4. BUILD THE API FORMAT (Semi-Colon Separated)
# ==========================================
api_data = {
  "browser"      => "chromium",
  "os"           => "windows",
  "architecture" => "64-bit",
  "timestamp"    => Time.now.to_i.to_s, # Dynamic Unix timestamp
  "editor"       => "RobRich",
  "channel"      => "dev",
  "repository"   => repository_url,
  "download"     => download_url,
  "version"      => version,
  "revision"     => revision,
  "commit"       => "" # Left empty as per your specification
}

# Map keys and values into: key=value;key=value
api_string = api_data.map { |k, v| "#{k}=#{v}" }.join(';')

# ==========================================
# 5. WRITE THE OUTPUT TO api/win64-dev-avx2
# ==========================================
File.write(OUTPUT_FILE, api_string)

puts "=== API GENERATOR ==="
puts "Successfully generated static API at: #{OUTPUT_FILE}"
puts "Data payload:\n#{api_string}"