# This script is licensed under GPLv3

require 'json'
require 'fileutils'

# 1. Define paths relative to this script's location (scripts/api-scripts/ungoogled_win32.rb)
# __dir__ is "scripts/api-scripts"
DATA_FILE = File.expand_path(File.join(__dir__, '..', 'links_data.json'))

# Target output: api/win32-stable-ungoogled
OUTPUT_DIR = File.expand_path(File.join(__dir__, '..', '..', 'api'))
OUTPUT_FILE = File.join(OUTPUT_DIR, 'win32-stable-ungoogled')

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

# Fetch the download URL from JSON after the file block is safely closed
download_url = current_data.dig('github', 'eloston_win32_archive')

# Fallback mechanism in case the key inside JSON is nil or missing
download_url ||= "https://github.com/ungoogled-software/ungoogled-chromium-windows"

# ==========================================
# 3. EXTRACT DATA VIA REGEX
# ==========================================
# Example URL: .../download/149.0.7827.155-1.1/ungoogled-chromium_149.0.7827.155-1.1_windows_x86.zip
# Captures base version (149.0.7827.155) and the suffix (1.1)
version = "unknown"
tag_version = "unknown"

if download_url =~ /download\/([^\/]+)/
  tag_version = $1 # Extracts "149.0.7827.155-1.1"
  version     = tag_version.split('-').first # Extracts "149.0.7827.155"
end

# Reconstruct the specific Repository/Release Tag URL
repository_url = "https://github.com/ungoogled-software/ungoogled-chromium-windows/releases/tag/#{tag_version}"

# ==========================================
# 4. BUILD THE API FORMAT (Semi-Colon Separated)
# ==========================================
api_data = {
  "browser"      => "chromium",
  "os"           => "windows",
  "architecture" => "64-bit",
  "timestamp"    => Time.now.to_i.to_s, # Dynamic Unix timestamp
  "editor"       => "eloston",
  "channel"      => "stable",
  "repository"   => repository_url,
  "download"     => download_url,
  "version"      => version,
  "revision"     => "", # Empty or not applicable directly from this URL structure
  "commit"       => ""  # Left empty as per your specification
}

# Map keys and values into: key=value;key=value
api_string = api_data.map { |k, v| "#{k}=#{v}" }.join(';')

# ==========================================
# 5. WRITE THE OUTPUT TO api/win32-stable-ungoogled
# ==========================================
File.write(OUTPUT_FILE, api_string)

puts "=== UNGOOGLED win32 API GENERATOR ==="
puts "Successfully generated static API at: #{OUTPUT_FILE}"
puts "Data payload:\n#{api_string}"