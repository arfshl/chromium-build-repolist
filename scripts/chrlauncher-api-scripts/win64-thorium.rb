# This script is licensed under GPLv3

require 'json'
require 'fileutils'

# 1. Define paths relative to this script's location
DATA_FILE = File.expand_path(File.join(__dir__, '..', 'links_data.json'))

# Target output directory: api/
OUTPUT_DIR = File.expand_path(File.join(__dir__, '..', '..', 'api'))

# Ensure the target 'api' directory exists
FileUtils.mkdir_p(OUTPUT_DIR)

# 2. Read and parse data from links_data.json
if File.exist?(DATA_FILE)
  current_data = JSON.parse(File.read(DATA_FILE))
else
  puts "Error: Source file not found at #{DATA_FILE}!"
  puts "Please run your Thorium fetcher script first."
  exit
end

# List of architecture variants to generate APIs for
variants = ['avx', 'avx2', 'sse3', 'sse4']

puts "=== THORIUM WIN64 API GENERATOR ==="

variants.each do |variant|
  # Get URLs from JSON
  download_url = current_data.dig('thorium', "thorium_win64_archive_#{variant}")
  
  # If data is empty in JSON, provide the main repository URL as a fallback
  if download_url.nil? || download_url.empty?
    download_url = "https://github.com/Alex313031/Thorium-Win"
  end

  # ==========================================
  # 3. EXTRACT DATA VIA REGEX
  # ==========================================
  # Example URL: https://github.com/Alex313031/Thorium-Win/releases/download/M126.0.6478.254/Thorium_AVX2_126.0.6478.254.zip
  # Captures major version (M126 or 126.0.6478.254)
  version = "unknown"
  revision = "unknown" # Thorium does not explicitly use rXXXXXX revision numbers in its URLs
  tag_version = "unknown"

  # Regex pattern to capture the Release Tag name from GitHub Releases URL structure
  if download_url =~ /releases\/download\/([^\/]+)/
    tag_version = $1 # Extracts "M126.0.6478.254" or the actual tag name
    
    # Strip the leading 'M' if present to get the clean version string
    version = tag_version.start_with?('M') ? tag_version[1..-1] : tag_version
  end

  # Reconstruct the specific Release Tag page URL on GitHub
  repository_url = tag_version == "unknown" ? "https://github.com/Alex313031/Thorium-Win" : "https://github.com/Alex313031/Thorium-Win/releases/tag/#{tag_version}"

  # ==========================================
  # 4. API FORMAT STRUCTURE (Semi-Colon Separated)
  # ==========================================
  api_data = {
    "browser"      => "thorium",
    "os"           => "windows",
    "architecture" => "64-bit",
    "timestamp"    => Time.now.to_i.to_s,
    "editor"       => "Alex313031",
    "channel"      => variant.upcase, # Indicates CPU variant (AVX, AVX2, SSE3, SSE4)
    "repository"   => repository_url,
    "download"     => download_url,
    "version"      => version,
    "revision"     => revision,
    "commit"       => "" 
  }

  # Map keys and values into: key=value;key=value
  api_string = api_data.map { |k, v| "#{k}=#{v}" }.join(';')

  # ==========================================
  # 5. WRITE THE OUTPUT FILE
  # ==========================================
  # Output filename matches: win64-thorium-avx, win64-thorium-avx2, etc.
  output_file_name = "win64-thorium-#{variant}"
  full_output_path = File.join(OUTPUT_DIR, output_file_name)

  File.write(full_output_path, api_string)
  puts "Successfully generated static API for [#{variant.upcase}] at: #{full_output_path}"
end