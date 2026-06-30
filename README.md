# ![Logo](https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_64.png) Chromium

The free and open-source project behind Google Chrome

###### If you want to contribute, edit the [templates/README.md.erb](templates/README.md.erb) instead of this README.md file. It is automatically generated from the template.

<details>

<summary><b>OS</b></summary>
<br>

[Windows 64-bit](https://github.com/arfshl/chromium-build-repolist#chromium-for-64-bit-windows)

[Windows 32-bit](https://github.com/arfshl/chromium-build-repolist#chromium-for-32-bit-windows)

[Windows 64-bit ARM](https://github.com/arfshl/chromium-build-repolist#chromium-for-64-bit-windows-on-arm)

[macOS](https://github.com/arfshl/chromium-build-repolist#macos)

[Linux](https://github.com/arfshl/chromium-build-repolist#linux)

[*BSD](https://github.com/arfshl/chromium-build-repolist#bsd)

[Android](https://github.com/arfshl/chromium-build-repolist#android)

</details>

#### [Notes](docs/notes.md)

<details>

<summary><b>Features</b></summary>
<br>

#### [Secure Preferenes](docs/notes.md#secure-preferences)

#### [Google API Keys](docs/notes.md#google-api-keys)

#### [Widevine plugin](docs/notes.md#widevine)

#### [Flash plugin](docs/notes.md#flash)

#### [NPAPI plugin](docs/notes.md#npapi)

#### [HTML5 audio/video](docs/notes.md#html5-audio-video)

</details>

<details>

<summary><b>Advanced</b></summary>
<br>

#### [Internal pages](docs/notes.md#1-internal-pages)

#### [Keyboard shortcuts](docs/notes.md#2-keyboard-shortcuts)

#### [Command-line flags](docs/notes.md#3-command-line-flags)

#### [User data directory](docs/notes.md#4-user-data-directory)

#### [External extension installation](docs/notes.md#5-external-extension-installation)

#### [Source code](docs/notes.md#6-source-code)

#### [Older version](docs/notes.md#7-older-version)

#### [Browser crash](docs/notes.md#8-browser-crash)

#### [Browser benchmark](docs/notes.md#browser-benchmark)

#### [API (for developers)](docs/notes.md#api)

</details>

#### [Links](docs/notes.md#links)

#### [Browsers](docs/notes.md#browsers)

<details>

<summary><b>Privacy</b></summary>
<br>

#### [Browser update](docs/notes.md#1-browser-update)

#### [Browser settings](docs/notes.md#2-browser-settings)

#### [Hosts file](docs/notes.md#3-hosts-file)

#### [DNS services](docs/notes.md#4-dns-services)

#### [Web search engines](docs/notes.md#5-web-search-engines)

#### [Extensions](docs/notes.md#6-extensions)

#### [Tools](docs/notes.md#7-tools)

#### [Guides](docs/notes.md#8-guides)

#### [Tests](docs/notes.md#9-tests)

</details>

#### [Malware](docs/notes.md#malware)

#### [Updaters](docs/notes.md#updaters)

#### [Your Chromium Version](https://toolbox.googleapps.com/apps/useragent)

#### [DRM and Codec Test](https://ott.dolby.com/codec_test/index.html)


- 🟢 Stable builds
- ⚫ Development/beta builds
- 🟡 Canary builds
- 🔴 Development builds (official repository)

# Windows
<details>

<summary>How to install, update and remove Chromium, on Windows?</summary>
<br>
About updates: your settings, bookmarks, extensions, history, passwords, cookies... will be saved. Do not worry!
For automated updates, choose one of the Chromium #updaters

Installer

1. Download the EXE executable file (This is a [7-zip](https://www.7-zip.org/)) self-extracting archive. So you can unzip it to see its content)
2. Close Chromium browser if opened
3. Execute this EXE file
4. Wait for 2 or 3 seconds (Installation is silent)
5. Open Chromium browser. It is updated!
6. To remove it definitively: use the [standard way](https://support.microsoft.com/en-us/help/4028054/windows-10-repair-or-remove-programs) (or a software like Bulk Crap Uninstaller, Geek Uninstaller, Revo Uninstaller, Ccleaner...)


Archive

1. Download the ZIP archive file
2. Close Chromium browser if opened
3. Unzip this ZIP file
4. Delete all the files from your installation directory
5. Move the files from the unzipped directory to your installation directory
6. Open Chromium browser. It is updated!
7. To remove it definitively: delete your installation directory


Portable
Note: Chromium has #secure-preferences feature based on the machine SID. So extensions, certificates and passwords are not portable. The best way to migrate your data is to synchronize them.

1. Download and unzip "chrlauncher-xxxxxxx.zip"
2. Execute chrlauncher.exe ([chrlauncher](https://github.com/henrypp/chrlauncher) is a free and open-source Chromium launcher/updater)
3. Close Chromium browser if a notification displays a new version
4. Click on the "Download" button
5. Wait for download and automatic installation
6. Open Chromium browser. It is updated!
7. To remove it definitively: delete the chrlauncher folder

</details>

<details>

<summary>Windows 8.1, 8, 7, XP, Vista... and old versions</summary>
<br>

Unoffcial builds of Chromium for Windows 7/8/8.1, XP and Vista [are available](https://github.com/e3kskoy7wqk/Chromium-for-windows-7-REWORK/releases). They are based on the latest stable version that supports these Windows versions.

Chromium-based browser who provide experience like Vanilla Chromium are also available for Windows XP/Vista/7/8/8.1.

[Supermium for Windows XP/Vista/7/8/8.1](https://win32subsystem.live/supermium/?legacy=true)

[Thorium for Windows 7/8/8.1](https://thorium.rocks/win7)

[Thorium for Windows XP/Vista](https://thorium.rocks/winxp/)

Since version 110, Chromium is [not available](https://support.google.com/chrome/thread/185534985/) on Windows 7, 8, 8.1, Server 2012 and Server 2012 R2 [(Archive: 1)](https://archive.is/dCOEx)
For help, version 109 works fine. The last stable version for them is 109.0.5414.120

[installer, archive](https://github.com/Hibbiki/chromium-win64/releases/tag/v109.0.5414.120-r1070088) (win64 • stable)
[installer, archive](https://github.com/Hibbiki/chromium-win32/releases/tag/v109.0.5414.120-r1070088) (win32 • stable)
[installer, archive](https://github.com/macchrome/winchrome/releases/tag/v109.5414.120-M109.0.5414.120-r1070088-Win64) (win64 • stable • ungoogled)

Since version 89, Chromium [needs a CPU with SSE3 support](https://docs.google.com/document/d/1QUzL4MGNqX4wiLvukUwBf6FdCL35kCDoEJTm2wMkahw/edit) [(Archive: PDF)](https://ia600603.us.archive.org/8/items/require-sse3-for-chrome-on-x86-pdf/Require%20SSE3%20for%20Chrome%20on%20x86%20-%20PDF-Require-SSE3-for-Chrome-on-x86.pdf)
For help, version 88 works fine on older CPU processors. The last stable version is 88.0.4324.190

[installer, archive](https://github.com/Hibbiki/chromium-win32/releases/tag/v88.0.4324.190-r2202) (win32 • stable)
[installer, archive](https://github.com/macchrome/winchrome/releases/tag/v88.0.4324.190-r2202-Win64) (win32/win64 • stable • ungoogled)


Since version 50, Chromium is [not available on XP and Vista](https://bugs.chromium.org/p/chromium/issues/detail?id=579196) [(Archive: 1)](https://archive.is/tWGmK)
For help, version 49 works fine. The last stable version for Windows XP and Vista is 49.0.2623.112

[installer](https://github.com/arfshl/chromium-build-repolist/releases/download/chromium-49.0.2623.112/chromium_win32_49.0.2623.112_r403382_sync.exe), [archive](https://github.com/arfshl/chromium-build-repolist/releases/download/chromium-49.0.2623.112/chromium_win32_49.0.2623.112_r403382_sync.zip) (win32 • stable) [Archive 1](https://archive.org/details/chromium-49.0.2623.112_r403382_sync) [Archive 2](https://web.archive.org/web/20210603163609/https://github.com/henrypp/chromium/releases/tag/v49.0.2623.112-r403382-win32)
[portable](https://sourceforge.net/projects/thumbapps/files/Internet/Chromium-nik/Windows%20XP/) (win32 • stable)
Other old versions: [portable](https://sourceforge.net/projects/crportable/files/) (win32 • dev)


Since version 35, Chromium [needs a CPU with SSE2 support](https://bugs.chromium.org/p/chromium/issues/detail?id=349320) [(Archive: 1)](https://archive.is/p0lim)
For help, version 34 works fine on older CPU processors.

[portable](https://sourceforge.net/projects/crportable/files/) (win32 • dev)
[builds before 253860](https://storage.googleapis.com/chromium-browser-continuous/index.html?prefix=Win/253756/) (win32 • dev)

</details>

#### Chromium for 64-bit Windows

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Portable](https://github.com/arfshl/chrlauncher-bin/archive/refs/heads/win64-stable-codecs-sync.zip) • [Archive](https://github.com/Hibbiki/chromium-win64/releases/download/v149.0.7827.201-r1625079/chrome.7z) • [Installer](https://github.com/Hibbiki/chromium-win64/releases/download/v149.0.7827.201-r1625079/mini_installer.exe) ![Static Badge](https://img.shields.io/badge/Hibbiki-036b96) ![Static Badge](https://img.shields.io/badge/sync-731995) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/win64-%235b6367)

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Portable](https://github.com/arfshl/chrlauncher-bin/archive/refs/heads/win64-stable-ungoogled.zip) • [Archive](https://github.com/ungoogled-software/ungoogled-chromium-windows/releases/download/149.0.7827.200-1.1/ungoogled-chromium_149.0.7827.200-1.1_windows_x64.zip) • [Installer](https://github.com/ungoogled-software/ungoogled-chromium-windows/releases/download/149.0.7827.200-1.1/ungoogled-chromium_149.0.7827.200-1.1_installer_x64.exe) ![Static Badge](https://img.shields.io/badge/Eloston-036b96) ![Static Badge](https://img.shields.io/badge/ungoogled-731995) ![Static Badge](https://img.shields.io/badge/win64-%235b6367)

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Portable](https://github.com/arfshl/chrlauncher-bin/archive/refs/heads/win64-stable-ungoogled-codecs.zip) • [Archive](https://github.com/macchrome/winchrome/releases/download/v150.7871.56-M150.0.7871.56-r1639810-Win64/ungoogled-chromium-150.0.7871.56-1_Win64.7z) • [Installer](https://github.com/macchrome/winchrome/releases/download/v150.7871.56-M150.0.7871.56-r1639810-Win64/150.0.7871.56_ungoogled_mini_installer.exe) ![Static Badge](https://img.shields.io/badge/Marmaduke-036b96) ![Static Badge](https://img.shields.io/badge/old-b40000) ![Static Badge](https://img.shields.io/badge/ungoogled-731995) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/win64-%235b6367)

- ⚫ <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Portable](https://github.com/arfshl/chrlauncher-bin/archive/refs/heads/win64-dev-avx.zip) • [Archive](https://github.com/RobRich999/Chromium_Clang/releases/download/v151.0.7874.0-r1641382-win64-avx/chrome.zip) • [Installer](https://github.com/RobRich999/Chromium_Clang/releases/download/v151.0.7874.0-r1641382-win64-avx/mini_installer.exe) ![Static Badge](https://img.shields.io/badge/RobRich-036b96) ![Static Badge](https://img.shields.io/badge/avx-731995) ![Static Badge](https://img.shields.io/badge/modified-%23877105) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/win64-%235b6367)

- ⚫ <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Portable](https://github.com/arfshl/chrlauncher-bin/archive/refs/heads/win64-dev-avx2.zip) • [Archive](https://github.com/RobRich999/Chromium_Clang/releases/download/v151.0.7874.0-r1641382-win64-avx2/chrome.zip) • [Installer](https://github.com/RobRich999/Chromium_Clang/releases/download/v151.0.7874.0-r1641382-win64-avx2/mini_installer.exe) ![Static Badge](https://img.shields.io/badge/RobRich-036b96) ![Static Badge](https://img.shields.io/badge/avx2-731995) ![Static Badge](https://img.shields.io/badge/modified-%23877105) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/win64-%235b6367)

- ⚫ <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Portable](https://github.com/arfshl/chrlauncher-bin/archive/refs/heads/win64-dev-avx512.zip) • [Archive](https://github.com/RobRich999/Chromium_Clang/releases/download/v151.0.7874.0-r1641382-win64-avx512/chrome.zip) • [Installer](https://github.com/RobRich999/Chromium_Clang/releases/download/v151.0.7874.0-r1641382-win64-avx512/mini_installer.exe) ![Static Badge](https://img.shields.io/badge/RobRich-036b96) ![Static Badge](https://img.shields.io/badge/avx512-731995) ![Static Badge](https://img.shields.io/badge/modified-%23877105) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/win64-%235b6367)

- 🔴 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Portable](https://github.com/arfshl/chrlauncher-bin/archive/refs/heads/win64-dev-official.zip) • [Archive](https://storage.googleapis.com/chromium-browser-snapshots/Win_x64/1654618/chrome-win.zip) • [Installer](https://storage.googleapis.com/chromium-browser-snapshots/Win_x64/1654618/mini_installer.exe) ![Static Badge](https://img.shields.io/badge/The_Chromium_Authors-036b96) ![Static Badge](https://img.shields.io/badge/win64-%235b6367)

#### Thorium for 64-bit Windows
Thorium [can used with chrlauncher](https://raw.githubusercontent.com/arfshl/chromium-build-repolist/main/assets/thorium-chrlauncher.png) for updater and it's also portable 

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Portable](https://github.com/arfshl/chrlauncher-bin/archive/refs/heads/win64-thorium-avx.zip) • [Archive](https://github.com/Alex313031/Thorium-Win/releases/download/M138.0.7204.303/thorium_AVX_138.0.7204.303.zip) • [Installer](https://github.com/Alex313031/Thorium-Win/releases/download/M138.0.7204.303/thorium_AVX_mini_installer.exe) ![Static Badge](https://img.shields.io/badge/Thorium-036b96) ![Static Badge](https://img.shields.io/badge/Alex313031-036b96) ![Static Badge](https://img.shields.io/badge/old-b40000) ![Static Badge](https://img.shields.io/badge/avx-731995) ![Static Badge](https://img.shields.io/badge/modified-%23877105) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/win64-%235b6367)

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Portable](https://github.com/arfshl/chrlauncher-bin/archive/refs/heads/win64-thorium-avx2.zip) • [Archive](https://github.com/Alex313031/Thorium-Win/releases/download/M138.0.7204.303/thorium_AVX2_138.0.7204.303.zip) • [Installer](https://github.com/Alex313031/Thorium-Win/releases/download/M138.0.7204.303/thorium_AVX2_mini_installer.exe) ![Static Badge](https://img.shields.io/badge/Thorium-036b96) ![Static Badge](https://img.shields.io/badge/Alex313031-036b96) ![Static Badge](https://img.shields.io/badge/old-b40000) ![Static Badge](https://img.shields.io/badge/avx2-731995) ![Static Badge](https://img.shields.io/badge/modified-%23877105) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/win64-%235b6367)

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Portable](https://github.com/arfshl/chrlauncher-bin/archive/refs/heads/win64-thorium-sse3.zip) • [Archive](https://github.com/Alex313031/Thorium-Win/releases/download/M138.0.7204.303/thorium_SSE3_138.0.7204.303.zip) • [Installer](https://github.com/Alex313031/Thorium-Win/releases/download/M138.0.7204.303/thorium_SSE3_mini_installer.exe) ![Static Badge](https://img.shields.io/badge/Thorium-036b96) ![Static Badge](https://img.shields.io/badge/Alex313031-036b96) ![Static Badge](https://img.shields.io/badge/old-b40000) ![Static Badge](https://img.shields.io/badge/sse3-731995) ![Static Badge](https://img.shields.io/badge/modified-%23877105) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/win64-%235b6367)

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Portable](https://github.com/arfshl/chrlauncher-bin/archive/refs/heads/win64-thorium-sse4.zip) • [Archive](https://github.com/Alex313031/Thorium-Win/releases/download/M138.0.7204.303/thorium_SSE4_138.0.7204.303.zip) • [Installer](https://github.com/Alex313031/Thorium-Win/releases/download/M138.0.7204.303/thorium_SSE4_mini_installer.exe) ![Static Badge](https://img.shields.io/badge/Thorium-036b96) ![Static Badge](https://img.shields.io/badge/Alex313031-036b96) ![Static Badge](https://img.shields.io/badge/old-b40000) ![Static Badge](https://img.shields.io/badge/sse4-731995) ![Static Badge](https://img.shields.io/badge/modified-%23877105) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/win64-%235b6367)

#### Chromium for 32-bit Windows

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Portable](https://github.com/arfshl/chrlauncher-bin/archive/refs/heads/win32-stable-codecs-sync.zip) • [Archive](https://github.com/Hibbiki/chromium-win32/releases/download/v109.0.5414.120-r1070088/chrome.sync.7z) • [Installer](https://github.com/Hibbiki/chromium-win32/releases/download/v109.0.5414.120-r1070088/mini_installer.sync.exe) ![Static Badge](https://img.shields.io/badge/Hibbiki-036b96) ![Static Badge](https://img.shields.io/badge/last--release-b40000) ![Static Badge](https://img.shields.io/badge/sync-731995) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/win32-%235b6367)

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Portable](https://github.com/arfshl/chrlauncher-bin/archive/refs/heads/win32-stable-ungoogled.zip) • [Archive](https://github.com/ungoogled-software/ungoogled-chromium-windows/releases/download/149.0.7827.200-1.1/ungoogled-chromium_149.0.7827.200-1.1_windows_x86.zip) • [Installer](https://github.com/ungoogled-software/ungoogled-chromium-windows/releases/download/149.0.7827.200-1.1/ungoogled-chromium_149.0.7827.200-1.1_installer_x86.exe) ![Static Badge](https://img.shields.io/badge/Eloston-036b96) ![Static Badge](https://img.shields.io/badge/ungoogled-731995) ![Static Badge](https://img.shields.io/badge/win32-%235b6367)

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Portable](https://github.com/arfshl/chrlauncher-bin/archive/refs/heads/win32-stable-ungoogled-codecs.zip) • [Archive](https://github.com/macchrome/winchrome/releases/download/v109.5414.120-M109.0.5414.120-r1070088-Win64/ungoogled-chromium-109.0.5414.130-1_Win32.7z) ![Static Badge](https://img.shields.io/badge/Marmaduke-036b96) ![Static Badge](https://img.shields.io/badge/last--release-b40000) ![Static Badge](https://img.shields.io/badge/ungoogled-731995) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs-%23877105) ![Static Badge](https://img.shields.io/badge/win32-%235b6367)

- 🔴 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Portable](https://github.com/arfshl/chrlauncher-bin/archive/refs/heads/win32-dev-official.zip) • [Archive](https://storage.googleapis.com/chromium-browser-snapshots/Win/1654608/chrome-win.zip) • [Installer](https://storage.googleapis.com/chromium-browser-snapshots/Win/1654608/mini_installer.exe) ![Static Badge](https://img.shields.io/badge/The_Chromium_Authors-036b96) ![Static Badge](https://img.shields.io/badge/win32-%235b6367)


#### Chromium for 64-bit Windows on ARM

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Archive](https://s3armawstosg-2.s3-us-west-2.amazonaws.com/stable/download/v120.0.6099.199-r1668-winarm64/chrome.zip) • [Installer](https://s3armawstosg-2.s3-us-west-2.amazonaws.com/stable/download/v120.0.6099.199-r1668-winarm64/mini_installer.exe) ![Static Badge](https://img.shields.io/badge/Arm-036b96) ![Static Badge](https://img.shields.io/badge/old-b40000) ![Static Badge](https://img.shields.io/badge/signed-%23877105) ![Static Badge](https://img.shields.io/badge/win64--arm-%235b6367)

- ⚫ <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Archive](https://s3armawstosg-2.s3-us-west-2.amazonaws.com/beta/download/v115.0.5790.40-r979-winarm64/chrome.zip) • [Installer](https://s3armawstosg-2.s3-us-west-2.amazonaws.com/beta/download/v115.0.5790.40-r979-winarm64/mini_installer.exe) ![Static Badge](https://img.shields.io/badge/Arm-036b96) ![Static Badge](https://img.shields.io/badge/signed-%23877105) ![Static Badge](https://img.shields.io/badge/win64--arm-%235b6367)

- 🟡 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Archive](https://s3armawstosg-2.s3-us-west-2.amazonaws.com/canary/download/v122.0.6231.0-r1243752-winarm64/chrome.zip) • [Installer](https://s3armawstosg-2.s3-us-west-2.amazonaws.com/canary/download/v122.0.6231.0-r1243752-winarm64/mini_installer.exe) ![Static Badge](https://img.shields.io/badge/Arm-036b96) ![Static Badge](https://img.shields.io/badge/signed-%23877105) ![Static Badge](https://img.shields.io/badge/win64--arm-%235b6367)

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Archive](https://github.com/ungoogled-software/ungoogled-chromium-windows/releases/download/149.0.7827.200-1.1/ungoogled-chromium_149.0.7827.200-1.1_windows_arm64.zip) • [Installer](https://github.com/ungoogled-software/ungoogled-chromium-windows/releases/download/149.0.7827.200-1.1/ungoogled-chromium_149.0.7827.200-1.1_installer_arm64.exe) ![Static Badge](https://img.shields.io/badge/Eloston-036b96) ![Static Badge](https://img.shields.io/badge/ungoogled-731995) ![Static Badge](https://img.shields.io/badge/win64--arm-%235b6367)

#### Chromium on winget package manager

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> Hibiki builds ![Static Badge](https://img.shields.io/badge/Hibbiki-036b96) ![Static Badge](https://img.shields.io/badge/sync-731995) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/win64-%235b6367)

   <details>

   <summary>Available in winget</summary>
   <br>
   
   To install this Chromium version on Windows 10/11 with winget package manager:

       winget install Hibbiki.Chromium
    
    </details>

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> RobRich999 Chromium_Clang builds ![Static Badge](https://img.shields.io/badge/RobRich-036b96) ![Static Badge](https://img.shields.io/badge/avx-731995) ![Static Badge](https://img.shields.io/badge/avx2-731995) ![Static Badge](https://img.shields.io/badge/avx512-731995) ![Static Badge](https://img.shields.io/badge/modified-%23877105) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/win64-%235b6367)

   <details>

   <summary>Available in winget</summary>
   <br>
   
   To install this Chromium version on Windows 10/11 with winget package manager:

       winget install RobRich999.Chromium_Clang.AVX # for AVX version
       winget install RobRich999.Chromium_Clang.AVX2 # for AVX2 version
       winget install RobRich999.Chromium_Clang.AVX512 # for AVX512 version
    
    </details>

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> ungoogled-chromium builds ![Static Badge](https://img.shields.io/badge/Eloston-036b96) ![Static Badge](https://img.shields.io/badge/ungoogled-731995) ![Static Badge](https://img.shields.io/badge/win-%235b6367)

   <details>

   <summary>Available in winget</summary>
   <br>
   
   To install this Chromium version on Windows 10/11 with winget package manager:

       winget install eloston.ungoogled-chromium
    
    </details>

#### Thorium on winget package manager

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> ![Static Badge](https://img.shields.io/badge/Thorium-036b96) ![Static Badge](https://img.shields.io/badge/Alex313031-036b96) ![Static Badge](https://img.shields.io/badge/old-b40000) ![Static Badge](https://img.shields.io/badge/sse3-731995) ![Static Badge](https://img.shields.io/badge/avx2-731995) ![Static Badge](https://img.shields.io/badge/modified-%23877105) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/win64-%235b6367)

   <details>

   <summary>Available in winget</summary>
   <br>
   
   To install Thorium on Windows 10/11 with winget package manager:

       winget install Alex313031.Thorium # for SSE3 version
       winget install Alex313031.Thorium.AVX2 # for AVX2 version
    
    </details>

# macOS

<details>

<summary>How to install, update and remove Chromium, on macOS?</summary>
<br>

About updates: your settings, bookmarks, extensions, history, passwords, cookies... will be saved. Do not worry!
For automated updates, choose one of the Chromium #updaters

Installer

1. Download the DMG file
2. Close Chromium browser if opened
3. Execute this DMG file
4. Drag its icon on Applications folder
5. You may then "Eject" and throw away this disk image
6. To remove it definitively: drag the app from the Applications folder to the Trash.


Archive

1. Download the ZIP archive file
2. Close Chromium browser if opened
3. Unzip this ZIP file
4. Double click on the unzipped folder to open it
5. Drag its icon on Applications folder
6. To remove it definitively: drag the app from the Applications folder to the Trash

</details>

<details>
<summary>Chromium for older macOS versions</summary>
<br>

For older macOS (10.7+), you can use the [Chromium-legacy](https://github.com/blueboxd/chromium-legacy) project. 
</details>

####  Chromium for 64-bit macOS on Intel

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Archive](https://github.com/macchrome/macstable/releases/download/v150.7871.55-M150.0.7871.55-r1639810-macOS/Chromium.app.ungoogled-150.0.7871.55.tar.xz) ![Static Badge](https://img.shields.io/badge/Marmaduke-036b96) ![Static Badge](https://img.shields.io/badge/ungoogled-731995) ![Static Badge](https://img.shields.io/badge/mac-%235b6367)

- 🔴 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Archive](https://storage.googleapis.com/chromium-browser-snapshots/Mac/1654673/chrome-mac.zip) ![Static Badge](https://img.shields.io/badge/The_Chromium_Authors-036b96) ![Static Badge](https://img.shields.io/badge/mac-%235b6367)


#### Chromium for 64-bit macOS on Arm

- 🔴 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Archive](https://storage.googleapis.com/chromium-browser-snapshots/Mac_Arm/1654678/chrome-mac.zip) ![Static Badge](https://img.shields.io/badge/The_Chromium_Authors-036b96) ![Static Badge](https://img.shields.io/badge/mac--arm-%235b6367)

#### Chromium for 32-bit macOS
Since version 39, Chromium and Google Chrome [are not available in 32-bit version for macOS.](https://workspaceupdates.googleblog.com/2014/09/google-chrome-64-bit-for-mac-and-windows.html)


# Linux

<details>

<summary>How to install, update and remove Chromium, on Linux distributions?</summary>
<br>
How to install, update and remove Chromium, on Linux distributions?

In most cases, Chromium is directly available in the official repository of [each Linux distribution](https://chromium.googlesource.com/chromium/src/+/master/docs/linux/chromium_packages.md). So it is easy to install, update and remove it via the integrated software/package manager or in command-lines.

There also [Snap](https://en.wikipedia.org/wiki/Snap_(package_manager)) and [Flatpak](https://en.wikipedia.org/wiki/Flatpak) packages are available and sometimes more up-to-date than the official repository. So you can use them if you want to have the latest version of Chromium.

For more info, check a [list of software package management systems](https://en.wikipedia.org/wiki/List_of_software_package_management_systems#Linux).

</details>

#### Chromium for 64-bit Linux

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Archive](https://github.com/macchrome/linchrome/releases/download/v150.7871.55-M150.0.7871.55-r1639810-portable-ungoogled-Lin64/ungoogled-chromium_150.0.7871.55_1.vaapi_linux.tar.xz) ![Static Badge](https://img.shields.io/badge/Marmaduke-036b96) ![Static Badge](https://img.shields.io/badge/old-b40000) ![Static Badge](https://img.shields.io/badge/ungoogled-731995) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs-%23877105) ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Binaries](https://github.com/Eloston/ungoogled-chromium#downloads) [Download List](https://ungoogled-software.github.io/ungoogled-chromium-binaries/) ![Static Badge](https://img.shields.io/badge/Eloston-036b96) ![Static Badge](https://img.shields.io/badge/ungoogled-731995) ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Portable AppImage](https://github.com/ungoogled-software/ungoogled-chromium-portablelinux/releases/download/149.0.7827.200-1/ungoogled-chromium-149.0.7827.200-1-x86_64.AppImage) • [Portable Archive](https://github.com/ungoogled-software/ungoogled-chromium-portablelinux/releases/download/149.0.7827.200-1/ungoogled-chromium-149.0.7827.200-1-x86_64_linux.tar.xz) ![Static Badge](https://img.shields.io/badge/Eloston-036b96) ![Static Badge](https://img.shields.io/badge/ungoogled-731995) ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

- ⚫ <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Packages .deb](https://github.com/RobRich999/Chromium_Clang/releases/download/v151.0.7874.0-r1641382-linux64-deb-avx2/chromium-browser-unstable_151.0.7874.0-1_amd64.deb) ![Static Badge](https://img.shields.io/badge/RobRich-036b96) ![Static Badge](https://img.shields.io/badge/avx2-731995) ![Static Badge](https://img.shields.io/badge/modified-%23877105) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

- ⚫ <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Packages .deb](https://github.com/RobRich999/Chromium_Clang/releases/download/v151.0.7874.0-r1641382-linux64-deb-avx/chromium-browser-unstable_151.0.7874.0-1_amd64.deb) ![Static Badge](https://img.shields.io/badge/RobRich-036b96) ![Static Badge](https://img.shields.io/badge/avx-731995) ![Static Badge](https://img.shields.io/badge/modified-%23877105) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

- ⚫ <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Packages .rpm](https://github.com/RobRich999/Chromium_Clang/releases/download/v151.0.7874.0-r1641382-linux64-rpm-avx2/chromium-browser-unstable-151.0.7874.0-1.x86_64.rpm) ![Static Badge](https://img.shields.io/badge/RobRich-036b96) ![Static Badge](https://img.shields.io/badge/avx2-731995) ![Static Badge](https://img.shields.io/badge/modified-%23877105) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

- ⚫ <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Packages .rpm](https://github.com/RobRich999/Chromium_Clang/releases/download/v151.0.7874.0-r1641382-linux64-rpm-avx/chromium-browser-unstable-151.0.7874.0-1.x86_64.rpm) ![Static Badge](https://img.shields.io/badge/RobRich-036b96) ![Static Badge](https://img.shields.io/badge/avx-731995) ![Static Badge](https://img.shields.io/badge/modified-%23877105) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

- 🔴 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Archive](https://storage.googleapis.com/chromium-browser-snapshots/Linux_x64/1654668/chrome-linux.zip) ![Static Badge](https://img.shields.io/badge/The_Chromium_Authors-036b96) ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

#### Chromium for 32-bit Linux

- 🔴 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Archive](https://storage.googleapis.com/chromium-browser-snapshots/Linux/382086/chrome-linux.zip) ![Static Badge](https://img.shields.io/badge/The_Chromium_Authors-036b96) ![Static Badge](https://img.shields.io/badge/last--release-b40000) ![Static Badge](https://img.shields.io/badge/linux32-%235b6367)

#### Chromium for ARM64 Linux

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Portable AppImage](https://github.com/ungoogled-software/ungoogled-chromium-portablelinux/releases/download/149.0.7827.200-1/ungoogled-chromium-149.0.7827.200-1-arm64.AppImage) • [Portable Archive](https://github.com/ungoogled-software/ungoogled-chromium-portablelinux/releases/download/149.0.7827.200-1/ungoogled-chromium-149.0.7827.200-1-arm64_linux.tar.xz) ![Static Badge](https://img.shields.io/badge/Eloston-036b96) ![Static Badge](https://img.shields.io/badge/ungoogled-731995) ![Static Badge](https://img.shields.io/badge/linux--arm64-%235b6367)

#### Chromium on distro repository (supported architecture is depending on your distro)

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> Arch Linux ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

   <details>

   <summary>Available in the official repository</summary>
   <br>

       sudo pacman -S chromium

    </details>

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> Debian ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

   <details>

   <summary>Available in the official repository</summary>
   <br>

    To install the stable Chromium version on Debian:

       sudo apt update
       sudo apt install chromium chromium-l10n

    </details>


- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> Fedora ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

   <details>

   <summary>Available in the official repository</summary>
   <br>

    To install the stable Chromium version on Fedora:

       sudo dnf update
       sudo dnf install chromium

    </details>

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> Linux Mint ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

   <details>

   <summary>Available in the official repository</summary>
   <br>

    To install the stable Chromium version on Linux Mint:

       sudo apt update
       sudo apt install chromium

    </details>

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> Manjaro ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

   <details>

   <summary>Available in the official repository</summary>
   <br>

    To install the stable Chromium version on Manjaro:

       sudo pacman -S chromium

    </details>

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> Puppy Linux ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

   <details>

   <summary>Available in the official repository</summary>
   <br>

    Follow the posts at [Announcements about LxPup, ScPup, UPups, Chromium, LXQt, Kernels etc.](https://forum.puppylinux.com/viewtopic.php?f=7&t=124)

     1. Install it via Menu → Internet → Get Web Browser

     2. or [download it from the Sourceforge repository](https://sourceforge.net/projects/lxpup/files/Other/chromium/)

    </details>

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> openSUSE ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

   <details>

   <summary>Available in the official repository</summary>
   <br>

    To install the stable Chromium version on openSUSE:

       sudo zypper update
       sudo zypper install chromium

    </details>
    

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> RHEL 7+ and its clone ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

   <details>

   <summary>Available in the EPEL repository</summary>
   <br>

    To install the stable Chromium version on RHEL 7+: 
    
       sudo yum install epel-release
       sudo yum install chromium

    </details>


-  🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> Slackware ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

   <details>

   <summary>Unavailable in the official repository but you can install it!</summary>
   <br>

    Please visit https://blog.slackware.nl/chromium-for-slackware-with-salt-and-pepper/

    </details>

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> Ubuntu ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

   <details>

   <summary>Unavailable in the official repository (since Ubuntu 19.10+) but you can install it!</summary>
   <br>

    The Snap version
    For Ubuntu 19.10+, use the snap package [(Deb to snap transition article)](https://ubuntu.com/blog/chromium-in-ubuntu-deb-to-snap-transition). 

       sudo snap install chromium

    </details>

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> Flatpak ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

   <details>

   <summary>Available in flathub.org</summary>
   <br>

    To install the stable Chromium with flatpak package: 

        flatpak install flathub org.chromium.Chromium

    To install ungoogled-chromium with flatpak package: 

        flatpak install flathub io.github.ungoogled_software.ungoogled_chromium

    </details>

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> Snap ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

   <details>

   <summary>Available in snapcraft.io</summary>
   <br>

    To install the stable Chromium with snap package: 

       sudo snap install chromium

    To install the ffmpeg codecs for Chromium with snap package: 

       sudo snap install chromium-ffmpeg 
       
    </details>

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> Chromium OS ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

   <details>

   <summary>Info</summary>
   <br>

    Chromium OS is the open-source OS designed by Google that primarily runs web applications. Based on Gentoo, it exists since 2009. Chromium is its default web browser. Google Chrome OS (closed-source) is based on Chromium OS.

    Free and open-source releases:

    [Linux Chromium OS Full](https://storage.googleapis.com/chromium-browser-snapshots/index.html?prefix=Linux_ChromiumOS_Full/) (Builds compiled by the [official buildbot](https://ci.chromium.org/p/chromium/g/chromium.chromiumos/console) • Snapshots repository)
       
    </details>


# *BSD

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> FreeBSD ![Static Badge](https://img.shields.io/badge/*bsd-%235b6367)

   <details>

   <summary>Available in FreshPorts</summary>
   <br>

    Info:

    Chromium at [FreeBSD wiki](https://wiki.freebsd.org/Chromium), [FreshPorts](https://www.freshports.org/www/chromium/) and [FreeBSD source code](https://svnweb.freebsd.org/ports/head/www/chromium/)

    </details>


- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> OpenBSD ![Static Badge](https://img.shields.io/badge/*bsd-%235b6367)

   <details>

   <summary>Available in OpenBSD Ports</summary>
   <br>

    Info:

    Chromium at [OpenBSD ports](https://github.com/openbsd/ports/tree/master/www/chromium) and [OpenBSD source code}(https://cvsweb.openbsd.org/cgi-bin/cvsweb/ports/www/chromium/)

    </details>


# Android

#### Chromium for 64-bit and 32-bit Android

- 🟢 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Packages .apk](https://github.com/macchrome/droidchrome/releases/download/v148.7778.210-M148.0.7778.210-r1610480-Ungoogled-And64/arm64_ChromePublic_HEVC-148.0.7778.210.apk) ![Static Badge](https://img.shields.io/badge/Marmaduke-036b96) ![Static Badge](https://img.shields.io/badge/ungoogled-731995) ![Static Badge](https://img.shields.io/badge/all--codecs-%23877105) ![Static Badge](https://img.shields.io/badge/android64-%235b6367)

- 🔴 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Archive](https://storage.googleapis.com/chromium-browser-snapshots/Android/1654638/chrome-android.zip) ![Static Badge](https://img.shields.io/badge/The_Chromium_Authors-036b96) ![Static Badge](https://img.shields.io/badge/android-%235b6367)

- 🔴 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Archive](https://storage.googleapis.com/chromium-browser-snapshots/Android_Arm64/1654634/chrome-android.zip) ![Static Badge](https://img.shields.io/badge/The_Chromium_Authors-036b96) ![Static Badge](https://img.shields.io/badge/android--arm64-%235b6367)

- 🔴 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Archive](https://storage.googleapis.com/chromium-browser-snapshots/AndroidDesktop_x64/1654635/chrome-android-desktop.zip) ![Static Badge](https://img.shields.io/badge/The_Chromium_Authors-036b96) ![Static Badge](https://img.shields.io/badge/android--desktop--x64-%235b6367)

- 🔴 <img src="https://raw.githubusercontent.com/chromium/chromium/main/chrome/app/theme/chromium/product_logo_256.png" width="20" alt="logo"> [Archive](https://storage.googleapis.com/chromium-browser-snapshots/AndroidDesktop_arm64/1654628/chrome-android-desktop.zip) ![Static Badge](https://img.shields.io/badge/The_Chromium_Authors-036b96) ![Static Badge](https://img.shields.io/badge/android--desktop--arm64-%235b6367)


# iOS

Chromium on iOS is a big fake!

Check the official [blog post](https://blog.chromium.org/2017/01/open-sourcing-chrome-on-ios.html) and [build instructions](https://chromium.googlesource.com/chromium/src/+/master/docs/ios/build_instructions.md) to understand that Chromium cannot use the existing content/implementation, which is based on V8/Blink. It is just a skin on top of Safari. Go your way! 




