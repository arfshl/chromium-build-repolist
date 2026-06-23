require 'json'
require 'net/http'
require 'uri'

DATA_FILE = File.join(__dir__, 'links_data.json')

def fetch_thorium_links
  # Ambil 10 rilis terakhir untuk memastikan semua varian arsitektur (jika rilisnya dicicil) tertangkap
  uri = URI('https://api.github.com/repos/Alex313031/Thorium-Win/releases?per_page=10')
  
  req = Net::HTTP::Get.new(uri)
  req['Accept'] = 'application/vnd.github+json'
  req['User-Agent'] = 'Chromium-Readme-Updater'

  res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
    http.request(req)
  end

  unless res.is_a?(Net::HTTPSuccess)
    puts "Error fetching Thorium releases: #{res.code}"
    return {}
  end

  releases = JSON.parse(res.body)
  thorium_data = {}

  # Daftar target varian arsitektur yang ingin kita kumpulkan
  variants = ['avx2', 'avx', 'sse4', 'sse3']
  
  # Tracking untuk mencatat tipe apa saja yang sudah berhasil ditemukan (agar dapat versi paling baru)
  found_targets = {
    'thorium_win64_installer_avx2' => false, 'thorium_win64_archive_avx2' => false,
    'thorium_win64_installer_avx'  => false, 'thorium_win64_archive_avx'  => false,
    'thorium_win64_installer_sse4' => false, 'thorium_win64_archive_sse4' => false,
    'thorium_win64_installer_sse3' => false, 'thorium_win64_archive_sse3' => false
  }

  releases.each do |release|
    next if release['assets'].nil? || release['assets'].empty?

    puts "Scanning release: #{release['name'] || release['tag_name']}..."

    release['assets'].each do |asset|
      name = asset['name'].downcase
      url = asset['browser_download_url']

      # Skip jika bukan file installer/archive Windows yang valid
      next unless name.end_with?('.exe', '.zip')

      # Tentukan varian arsitektur berdasarkan nama file
      detected_variant = nil
      variants.each do |v|
        if name.include?(v)
          detected_variant = v
          break
        end
      end

      # Jika tidak mengandung penanda avx2/avx/sse4/sse3, lewati
      next if detected_variant.nil?

      # Proses file Installer (.exe)
      if name.end_with?('.exe') && name.include?('mini_installer')
        key = "thorium_win64_installer_#{detected_variant}"
        unless found_targets[key]
          thorium_data[key] = url
          found_targets[key] = true
          puts "-> Found Installer [#{detected_variant.upcase}]: #{asset['name']}"
        end
      end

      # Proses file Archive (.zip)
      if name.end_with?('.zip')
        key = "thorium_win64_archive_#{detected_variant}"
        unless found_targets[key]
          thorium_data[key] = url
          found_targets[key] = true
          puts "-> Found Archive [#{detected_variant.upcase}]: #{asset['name']}"
        end
      end
    end

    # Jika semua varian (total 8 file target) sudah lengkap terisi, hentikan loop
    break if found_targets.values.all?(true)
  end

  thorium_data
end

def update_json_file(new_data)
  current_data = if File.exist?(DATA_FILE)
                   begin
                     JSON.parse(File.read(DATA_FILE))
                   rescue JSON::ParserError
                     {}
                   end
                 else
                   {}
                 end

  current_data['thorium'] ||= {}

  new_data.each do |key, value|
    current_data['thorium'][key] = value
  end

  File.write(DATA_FILE, JSON.pretty_generate(current_data))
  puts "Successfully updated links_data.json with all Thorium architecture variants."
end

thorium_links = fetch_thorium_links

if thorium_links.empty?
  puts "Warning: No valid Thorium assets found."
else
  update_json_file(thorium_links)
end