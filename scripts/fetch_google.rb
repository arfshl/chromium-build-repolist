# This script is licensed under GPLv3


require 'net/http'
require 'json'
require 'uri'

# Lokasi file database links_data.json di folder yang sama
DATA_FILE = File.join(__dir__, 'links_data.json')

google_platforms = {
  'Win_x64' => 'Win_x64',
  'Win'     => 'Win',
  'Mac'     => 'Mac',
  'Mac_Arm' => 'Mac_Arm',
  'Android' => 'Android'
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
    
    # Kondisi percabangan berdasarkan tipe Platform OS
    case platform_code
    when 'Win_x64', 'Win'
      # Khusus Windows (32-bit & 64-bit): Buat dua link (Archive Portabel & Mini Installer EXE)
      archive_url   = "https://storage.googleapis.com/chromium-browser-snapshots/#{platform_code}/#{last_revision}/chrome-win.zip"
      installer_url = "https://storage.googleapis.com/chromium-browser-snapshots/#{platform_code}/#{last_revision}/mini_installer.exe"
      
      current_data['google']["#{key}_archive"]   = archive_url
      current_data['google']["#{key}_installer"] = installer_url
      
      puts "Loaded Google Direct Link (Windows): #{key}_archive -> #{archive_url}"
      puts "Loaded Google Direct Link (Windows): #{key}_installer -> #{installer_url}"

    when 'Mac'
      current_data['google'][key] = "https://storage.googleapis.com/chromium-browser-snapshots/Mac/#{last_revision}/chrome-mac.zip"
      puts "Loaded Google Direct Link: #{key} -> #{current_data['google'][key]}"

    when 'Mac_Arm'
      current_data['google'][key] = "https://storage.googleapis.com/chromium-browser-snapshots/Mac_Arm/#{last_revision}/chrome-mac.zip"
      puts "Loaded Google Direct Link: #{key} -> #{current_data['google'][key]}"

    when 'Android'
      current_data['google'][key] = "https://storage.googleapis.com/chromium-browser-snapshots/Android/#{last_revision}/chrome-android.zip"
      puts "Loaded Google Direct Link: #{key} -> #{current_data['google'][key]}"
    end

  else
    # Jika gagal fetch API Google, buat fallback link index static agar tidak kosong/nil
    if platform_code == 'Win_x64' || platform_code == 'Win'
      current_data['google']["#{key}_archive"]   ||= "https://commondatastorage.googleapis.com/chromium-browser-snapshots/index.html?prefix=#{platform_code}/"
      current_data['google']["#{key}_installer"] ||= "https://commondatastorage.googleapis.com/chromium-browser-snapshots/index.html?prefix=#{platform_code}/"
    else
      current_data['google'][key] ||= "https://commondatastorage.googleapis.com/chromium-browser-snapshots/index.html?prefix=#{platform_code}/"
    end
    puts "Fallback Google (HTTP #{response.code}): #{key}"
  end
end

# Tulis kembali seluruh data dengan format JSON yang rapi
File.write(DATA_FILE, JSON.pretty_generate(current_data))
puts "Successfully saved Google links to scripts/links_data.json"