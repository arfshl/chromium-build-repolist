# This script is licensed under GPLv3

require 'net/http'
require 'json'
require 'uri'

# Database filepath relative to this script
DATA_FILE = File.join(__dir__, 'links_data.json')

# Google Chromium storage platform keys mapped to bucket codes
google_platforms = {
  'Win_x64'   => 'Win_x64',
  'Win'       => 'Win',
  'Mac'       => 'Mac',
  'Mac_Arm'   => 'Mac_Arm',
  'Android'   => 'Android',
  'Android_Arm64' => 'Android_Arm64',
  'AndroidDesktop_x64' => 'AndroidDesktop_x64',
  'AndroidDesktop_arm64' => 'AndroidDesktop_arm64',
  'Linux_x64' => 'Linux_x64',
  'Linux'     => 'Linux'
}

current_data = if File.exist?(DATA_FILE)
                 JSON.parse(File.read(DATA_FILE))
               else
                 { "github" => {}, "google" => {} }
               end

puts "=== FETCHING GOOGLE DATA ==="

google_platforms.each do |key, platform_code|
  url_string = "https://www.googleapis.com/download/storage/v1/b/chromium-browser-snapshots/o/#{platform_code}%2FLAST_CHANGE?alt=media"
  uri = URI(url_string)
  response = Net::HTTP.get_response(uri)

  if response.code == '200'
    last_revision = response.body.strip
    
    case platform_code
    when 'Win_x64', 'Win'
      # Windows platforms get separate entries for ZIP archives and EXE installers
      archive_url   = "https://storage.googleapis.com/chromium-browser-snapshots/#{platform_code}/#{last_revision}/chrome-win.zip"
      installer_url = "https://storage.googleapis.com/chromium-browser-snapshots/#{platform_code}/#{last_revision}/mini_installer.exe"
      
      current_data['google']["#{key}_archive"]   = archive_url
      current_data['google']["#{key}_installer"] = installer_url
      
      puts "Loaded Google Direct Link (Windows): #{key}_archive -> #{archive_url}"
      puts "Loaded Google Direct Link (Windows): #{key}_installer -> #{installer_url}"

    when 'Linux_x64', 'Linux'
      # Linux platforms store binaries inside chrome-linux.zip
      current_data['google'][key] = "https://storage.googleapis.com/chromium-browser-snapshots/#{platform_code}/#{last_revision}/chrome-linux.zip"
      puts "Loaded Google Direct Link (Linux): #{key} -> #{current_data['google'][key]}"

    when 'Mac', 'Mac_Arm'
      current_data['google'][key] = "https://storage.googleapis.com/chromium-browser-snapshots/#{platform_code}/#{last_revision}/chrome-mac.zip"
      puts "Loaded Google Direct Link (Mac): #{key} -> #{current_data['google'][key]}"

    when 'Android'
      current_data['google'][key] = "https://storage.googleapis.com/chromium-browser-snapshots/#{platform_code}/#{last_revision}/chrome-android.zip"
      puts "Loaded Google Direct Link (Android): #{key} -> #{current_data['google'][key]}"

    when 'Android_Arm64'
      current_data['google'][key] = "https://storage.googleapis.com/chromium-browser-snapshots/#{platform_code}/#{last_revision}/chrome-android.zip"
      puts "Loaded Google Direct Link (Android_Arm64): #{key} -> #{current_data['google'][key]}"

    when 'AndroidDesktop_x64'
      current_data['google'][key] = "https://storage.googleapis.com/chromium-browser-snapshots/#{platform_code}/#{last_revision}/chrome-android-desktop.zip"
      puts "Loaded Google Direct Link (AndroidDesktop_x64): #{key} -> #{current_data['google'][key]}"

    when 'AndroidDesktop_arm64'
      current_data['google'][key] = "https://storage.googleapis.com/chromium-browser-snapshots/#{platform_code}/#{last_revision}/chrome-android-desktop.zip"
      puts "Loaded Google Direct Link (AndroidDesktop_arm64): #{key} -> #{current_data['google'][key]}"
    end

  else
    # Fallback to static web index storage layout if API resolution fails
    if platform_code == 'Win_x64' || platform_code == 'Win'
      current_data['google']["#{key}_archive"]   ||= "https://commondatastorage.googleapis.com/chromium-browser-snapshots/index.html?prefix=#{platform_code}/"
      current_data['google']["#{key}_installer"] ||= "https://commondatastorage.googleapis.com/chromium-browser-snapshots/index.html?prefix=#{platform_code}/"
    else
      current_data['google'][key] ||= "https://commondatastorage.googleapis.com/chromium-browser-snapshots/index.html?prefix=#{platform_code}/"
    end
    puts "Fallback Google (HTTP #{response.code}): #{key}"
  end
end

# Save merged dataset back to JSON database with clean indentation
File.write(DATA_FILE, JSON.pretty_generate(current_data))
puts "Successfully saved Google links to links_data.json"