# This script is licensed under GPLv3

require 'net/http'
require 'json'
require 'uri'

DATA_FILE = File.join(__dir__, 'links_data.json')

# scanned github repos
github_repos = [
  'Hibbiki/chromium-win64',
#  'Hibbiki/chromium-win32',
  'macchrome/winchrome',
  'macchrome/linchrome',
  'macchrome/macstable',
  'macchrome/droidchrome',
  'RobRich999/Chromium_Clang',
  'ungoogled-software/ungoogled-chromium-windows',
  'ungoogled-software/ungoogled-chromium-portablelinux'
]

current_data = if File.exist?(DATA_FILE)
                 JSON.parse(File.read(DATA_FILE))
               else
                 { "github" => {}, "google" => {} }
               end

puts "=== FETCHING & PARSING GITHUB ASSETS ==="

github_repos.each do |repo|
  
  api_url = if repo == 'RobRich999/Chromium_Clang'
              "https://api.github.com/repos/#{repo}/releases"
            else
              "https://api.github.com/repos/#{repo}/releases/latest"
            end

  uri = URI(api_url)
  request = Net::HTTP::Get.new(uri)
  request['User-Agent'] = 'Ruby-Chromium-Generator'
  
  response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
    http.request(request)
  end

  if response.code == '200'
    data = JSON.parse(response.body)
    
    
    assets = []
    if data.is_a?(Array)
      data.first(10).each { |release| assets.concat(release['assets'] || []) }
    else
      assets = data['assets'] || []
    end
    
    puts "\nProcessing repository: #{repo} (Total tracked assets: #{assets.size})"

    case repo
    
    # ==========================================
    # 1. HIBBIKI (STABLE WINDOWS)
    # ==========================================
    when 'Hibbiki/chromium-win64'
      archive   = assets.find { |a| a['name'].end_with?('.7z') && !a['name'].include?('sync') }
      installer = assets.find { |a| a['name'] == 'mini_installer.exe' }
      
      current_data['github']['hibbiki_win64_archive']   = archive ? archive['browser_download_url'] : "https://github.com/#{repo}"
      current_data['github']['hibbiki_win64_installer'] = installer ? installer['browser_download_url'] : "https://github.com/#{repo}"

#    when 'Hibbiki/chromium-win32'
#      archive   = assets.find { |a| a['name'] == 'chrome.sync.7z' }
#      installer = assets.find { |a| a['name'] == 'mini_installer.sync.exe' }
      
#      current_data['github']['hibbiki_win32_archive']   = archive ? archive['browser_download_url'] : "https://github.com/#{repo}"
#      current_data['github']['hibbiki_win32_installer'] = installer ? installer['browser_download_url'] : "https://github.com/#{repo}"


    # ==========================================
    # 2. MARMADUKE / MACCHROME (MULTIPLATEFORM & UNGOOGLED)
    # ==========================================
    when 'macchrome/winchrome'
      macchrome_win64_archive = assets.find do |a| 
        fn_lower = a['name'].downcase
        fn_lower.include?('ungoogled') && fn_lower.end_with?('.7z', '.zip')
      end

      macchrome_win64_installer = assets.find do |a| 
        fn_lower = a['name'].downcase
        fn_lower.include?('ungoogled') && fn_lower.end_with?('.exe')
      end
      
      current_data['github']['marmaduke_win64_archive']   = macchrome_win64_archive ? macchrome_win64_archive['browser_download_url'] : "https://github.com/#{repo}"
      current_data['github']['marmaduke_win64_installer'] = macchrome_win64_installer ? macchrome_win64_installer['browser_download_url'] : "https://github.com/#{repo}"

    when 'macchrome/linchrome'
      linux_archive   = assets.find { |a| a['name'].end_with?('.tar.xz') && a['name'].include?('ungoogled') }
      
      current_data['github']['marmaduke_linux_archive']   = linux_archive ? linux_archive['browser_download_url'] : "https://github.com/#{repo}"
      
    when 'macchrome/macstable'
      mac_intel = assets.find { |a| a['name'].end_with?('.tar.xz') && a['name'].include?('ungoogled') }
      
      current_data['github']['marmaduke_mac_intel'] = mac_intel ? mac_intel['browser_download_url'] : "https://github.com/#{repo}"

    when 'macchrome/droidchrome'
      apk_arm64 = assets.find { |a| a['name'].end_with?('.apk') && (a['name'].include?('arm64') || a['name'].include?('v8a')) }

      current_data['github']['marmaduke_android_arm64'] = apk_arm64 ? apk_arm64['browser_download_url'] : "https://github.com/#{repo}"

    # ==========================================
    # 3. ROBRICH999 / CHROMIUM_CLANG (MULTIPLATEFORM & MULTI-ARCH)
    # ==========================================
    when 'RobRich999/Chromium_Clang'
      win64_installer_avx512 = assets.find { |a| url = a['browser_download_url'].downcase; url.end_with?('.exe') && url.include?('win64-avx512') }
      win64_installer_avx2   = assets.find { |a| url = a['browser_download_url'].downcase; url.end_with?('.exe') && url.include?('win64-avx2') }
      win64_installer_avx    = assets.find { |a| url = a['browser_download_url'].downcase; url.end_with?('.exe') && url.include?('win64-avx') && !url.include?('avx2') && !url.include?('avx512') }

      win64_archive_avx512 = assets.find { |a| url = a['browser_download_url'].downcase; url.end_with?('.zip', '.7z') && url.include?('win64-avx512') }
      win64_archive_avx2   = assets.find { |a| url = a['browser_download_url'].downcase; url.end_with?('.zip', '.7z') && url.include?('win64-avx2') }
      win64_archive_avx    = assets.find { |a| url = a['browser_download_url'].downcase; url.end_with?('.zip', '.7z') && url.include?('win64-avx') && !url.include?('avx2') && !url.include?('avx512') }

      linux_deb_avx512 = assets.find { |a| url = a['browser_download_url'].downcase; url.end_with?('.deb') && url.include?('linux64-deb-avx512') }
      linux_deb_avx2   = assets.find { |a| url = a['browser_download_url'].downcase; url.end_with?('.deb') && url.include?('linux64-deb-avx2') }
      linux_deb_avx    = assets.find { |a| url = a['browser_download_url'].downcase; url.end_with?('.deb') && url.include?('linux64-deb-avx') && !url.include?('avx2') && !url.include?('avx512') }

      linux_rpm_avx512 = assets.find { |a| url = a['browser_download_url'].downcase; url.end_with?('.rpm') && url.include?('linux64-rpm-avx512') }
      linux_rpm_avx2   = assets.find { |a| url = a['browser_download_url'].downcase; url.end_with?('.rpm') && url.include?('linux64-rpm-avx2') }
      linux_rpm_avx    = assets.find { |a| url = a['browser_download_url'].downcase; url.end_with?('.rpm') && url.include?('linux64-rpm-avx') && !url.include?('avx2') && !url.include?('avx512') }

      current_data['github']['robrich_win64_installer_avx']    = win64_installer_avx ? win64_installer_avx['browser_download_url'] : "https://github.com/#{repo}"
      current_data['github']['robrich_win64_installer_avx2']   = win64_installer_avx2 ? win64_installer_avx2['avx2'] ? win64_installer_avx2['browser_download_url'] : "https://github.com/#{repo}" : "https://github.com/#{repo}"
      current_data['github']['robrich_win64_installer_avx2']   = win64_installer_avx2 ? win64_installer_avx2['browser_download_url'] : "https://github.com/#{repo}"
      current_data['github']['robrich_win64_installer_avx512'] = win64_installer_avx512 ? win64_installer_avx512['browser_download_url'] : "https://github.com/#{repo}"

      current_data['github']['robrich_win64_archive_avx']    = win64_archive_avx ? win64_archive_avx['browser_download_url'] : "https://github.com/#{repo}"
      current_data['github']['robrich_win64_archive_avx2']   = win64_archive_avx2 ? win64_archive_avx2['browser_download_url'] : "https://github.com/#{repo}"
      current_data['github']['robrich_win64_archive_avx512'] = win64_archive_avx512 ? win64_archive_avx512['browser_download_url'] : "https://github.com/#{repo}"

      current_data['github']['robrich_linux_deb_avx']    = linux_deb_avx ? linux_deb_avx['browser_download_url'] : "https://github.com/#{repo}"
      current_data['github']['robrich_linux_deb_avx2']   = linux_deb_avx2 ? linux_deb_avx2['browser_download_url'] : "https://github.com/#{repo}"
      current_data['github']['robrich_linux_deb_avx512'] = linux_deb_avx512 ? linux_deb_avx512['browser_download_url'] : "https://github.com/#{repo}"

      current_data['github']['robrich_linux_rpm_avx']    = linux_rpm_avx ? linux_rpm_avx['browser_download_url'] : "https://github.com/#{repo}"
      current_data['github']['robrich_linux_rpm_avx2']   = linux_rpm_avx2 ? linux_rpm_avx2['browser_download_url'] : "https://github.com/#{repo}"
      current_data['github']['robrich_linux_rpm_avx512'] = linux_rpm_avx512 ? linux_rpm_avx512['browser_download_url'] : "https://github.com/#{repo}"

    # ==========================================
    # 0. UNGOOGLED-CHROMIUM-WINDOWS (MULTIPLATEFORM & UNGOOGLED)
    # ==========================================
    when 'ungoogled-software/ungoogled-chromium-windows'
      
      installer_win64   = assets.find { |a| a['name'].end_with?('installer_x64.exe') }
      archive_win64  = assets.find { |a| a['name'].end_with?('x64.zip') }

      installer_win32 = assets.find { |a| a['name'].end_with?('installer_x86.exe') }
      archive_win32 = assets.find { |a| a['name'].end_with?('x86.zip') }

      installer_winarm = assets.find { |a| a['name'].end_with?('installer_arm64.exe') }
      archive_winarm = assets.find { |a| a['name'].end_with?('arm64.zip') }

      current_data['github']['eloston_win64_archive']   = archive_win64 ? archive_win64['browser_download_url'] : "https://github.com/#{repo}"
      current_data['github']['eloston_win64_installer'] = installer_win64 ? installer_win64['browser_download_url'] : "https://github.com/#{repo}"
 
      current_data['github']['eloston_win32_archive']   = archive_win32 ? archive_win32['browser_download_url'] : "https://github.com/#{repo}"
      current_data['github']['eloston_win32_installer'] = installer_win32 ? installer_win32['browser_download_url'] : "https://github.com/#{repo}"

      current_data['github']['eloston_winarm_archive']   = archive_winarm ? archive_winarm['browser_download_url'] : "https://github.com/#{repo}"
      current_data['github']['eloston_winarm_installer'] = installer_winarm ? installer_winarm['browser_download_url'] : "https://github.com/#{repo}"

    when 'ungoogled-software/ungoogled-chromium-portablelinux'
      archive_x86_64   = assets.find { |a| a['name'].end_with?('x86_64_linux.tar.xz') }
      appimage_x86_64  = assets.find { |a| a['name'].end_with?('x86_64.AppImage') }

      archive_arm64    = assets.find { |a| a['name'].end_with?('arm64_linux.tar.xz') }
      appimage_arm64   = assets.find { |a| a['name'].end_with?('arm64.AppImage') }

      current_data['github']['eloston_x86_64_archive']   = archive_x86_64 ? archive_x86_64['browser_download_url'] : "https://github.com/#{repo}"
      current_data['github']['eloston_x86_64_appimage']  = appimage_x86_64 ? appimage_x86_64['browser_download_url'] : "https://github.com/#{repo}"

      current_data['github']['eloston_arm64_archive']    = archive_arm64 ? archive_arm64['browser_download_url'] : "https://github.com/#{repo}"
      current_data['github']['eloston_arm64_appimage']   = appimage_arm64 ? appimage_arm64['browser_download_url'] : "https://github.com/#{repo}"
    puts "-> Done processing variables for #{repo}."
    end
  else
    puts "Failed to fetch #{repo} (HTTP #{response.code}). Keeping old links if available."
  end
end

File.write(DATA_FILE, JSON.pretty_generate(current_data))
puts "\nSuccessfully parsed and saved specific GitHub assets!"