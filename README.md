- 🟢 Stable builds
- ⚫ Development/beta builds
- 🟡 Canary builds
- 🔴 Development builds (official repository)


# Linux

<details>

<summary>How to install, update and remove Chromium, on Linux distributions?</summary>
<br>
How to install, update and remove Chromium, on Linux distributions?

In most cases, Chromium is directly available in the official repository of [each Linux distribution](https://chromium.googlesource.com/chromium/src/+/master/docs/linux/chromium_packages.md). So it is easy to install, update and remove it via the integrated software/package manager or in command-lines.

There are other ways like:

- [chromium snap-package](https://snapcraft.io/chromium) ([Snap](https://en.wikipedia.org/wiki/Snap_(package_manager)))
- [chromium flatpak-package](https://flathub.org/apps/details/org.chromium.Chromium) ([Flatpak](https://en.wikipedia.org/wiki/Flatpak))

For more, check a [list of software package management systems](https://en.wikipedia.org/wiki/List_of_software_package_management_systems#Linux).

</details>

#### Chromium for 64-bit Linux

- 🟢 <img src="assets/logo.png" width="20" alt="logo"> [Archive](https://github.com/macchrome/linchrome/releases/download/v146.7680.143-M146.0.7680.143-r1582197-portable-ungoogled-Lin64/ungoogled-chromium_146.0.7680.143_1.vaapi_linux.tar.xz) ![Static Badge](https://img.shields.io/badge/Marmaduke-036b96) ![Static Badge](https://img.shields.io/badge/old-b40000) ![Static Badge](https://img.shields.io/badge/ungoogled-731995) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs-%23877105) ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

- 🟢 <img src="assets/logo.png" width="20" alt="logo"> [Binaries](https://github.com/Eloston/ungoogled-chromium#downloads) ![Static Badge](https://img.shields.io/badge/Eloston-036b96) ![Static Badge](https://img.shields.io/badge/ungoogled-731995) ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

- ⚫ <img src="assets/logo.png" width="20" alt="logo"> [Packages .deb](https://github.com/RobRich999/Chromium_Clang/releases/download/v151.0.7874.0-r1641382-linux64-deb-avx2/chromium-browser-unstable_151.0.7874.0-1_amd64.deb) ![Static Badge](https://img.shields.io/badge/RobRich-036b96) ![Static Badge](https://img.shields.io/badge/avx2-731995) ![Static Badge](https://img.shields.io/badge/modified-%23877105) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

- ⚫ <img src="assets/logo.png" width="20" alt="logo"> [Packages .deb](https://github.com/RobRich999/Chromium_Clang/releases/download/v151.0.7874.0-r1641382-linux64-deb-avx/chromium-browser-unstable_151.0.7874.0-1_amd64.deb) ![Static Badge](https://img.shields.io/badge/RobRich-036b96) ![Static Badge](https://img.shields.io/badge/avx-731995) ![Static Badge](https://img.shields.io/badge/modified-%23877105) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

- ⚫ <img src="assets/logo.png" width="20" alt="logo"> [Packages .rpm](https://github.com/RobRich999/Chromium_Clang/releases/download/v151.0.7874.0-r1641382-linux64-rpm-avx2/chromium-browser-unstable-151.0.7874.0-1.x86_64.rpm) ![Static Badge](https://img.shields.io/badge/RobRich-036b96) ![Static Badge](https://img.shields.io/badge/avx2-731995) ![Static Badge](https://img.shields.io/badge/modified-%23877105) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

- ⚫ <img src="assets/logo.png" width="20" alt="logo"> [Packages .rpm](https://github.com/RobRich999/Chromium_Clang/releases/download/v151.0.7874.0-r1641382-linux64-rpm-avx/chromium-browser-unstable-151.0.7874.0-1.x86_64.rpm) ![Static Badge](https://img.shields.io/badge/RobRich-036b96) ![Static Badge](https://img.shields.io/badge/avx-731995) ![Static Badge](https://img.shields.io/badge/modified-%23877105) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

#### Chromium for 64-bit and 32-bit Linux

- 🟢 <img src="assets/logo.png" width="20" alt="logo"> Arch Linux ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

   <details>

   <summary>Available in the official repository</summary>
   <br>

       sudo pacman -S chromium

    If you prefer, you can install the [Snap package](https://snapcraft.io/install/chromium/arch) or [Flatpak package](https://flathub.org/apps/details/org.chromium.Chromium) of Chromium.

    Info:

    - [Chromium at Arch Linux wiki](https://wiki.archlinux.org/title/Chromium)
    - [Arch Linux is an independent distribution](https://archlinux.org/)
    </details>

- 🟢 <img src="assets/logo.png" width="20" alt="logo"> CentOS ![Static Badge](https://img.shields.io/badge/linux-%235b6367)

   <details>

   <summary>Available in the official repository</summary>
   <br>

    To install the stable Chromium version on CentOS 7+: 

       $ sudo yum -y update
       $ sudo yum install -y epel-release
       $ sudo yum install -y chromium
    $ - requires given Linux commands to be executed as a regular non-privileged user

    To run it:

       $ chromium

    If you prefer, you can install the [Snap package](https://snapcraft.io/chromium) or [Flatpak package](https://flathub.org/apps/details/org.chromium.Chromium) of Chromium.

    Info:

    CentOS is a distribution affiliated with Red Hat (RHEL).
    </details>

# Windows 11, 10
<details>

<summary>How to install, update and remove Chromium, on Windows?</summary>
<br>
About updates: your settings, bookmarks, extensions, history, passwords, cookies... will be saved. Do not worry!
For automated updates, choose one of the Chromium #updaters

Installer

    Download the EXE executable file (This is a 7-zip self-extracting archive. So you can unzip it to see its content)
    Close Chromium browser if opened
    Execute this EXE file
    Wait for 2 or 3 seconds (Installation is silent)
    Open Chromium browser. It is updated!
    To remove it definitively: use the standard way (or a software like Bulk Crap Uninstaller, Geek Uninstaller, Revo Uninstaller, Ccleaner...)


Archive

    Download the ZIP archive file
    Close Chromium browser if opened
    Unzip this ZIP file
    Delete all the files from your installation directory
    Move the files from the unzipped directory to your installation directory
    Open Chromium browser. It is updated!
    To remove it definitively: delete your installation directory


Portable
Note: Chromium has #secure-preferences feature based on the machine SID. So extensions, certificates and passwords are not portable. The best way to migrate your data is to synchronize them.

    Download and unzip "chrlauncher-xxxxxxx.zip"
    Execute chrlauncher.exe (chrlauncher is a free and open-source Chromium launcher/updater)
    Close Chromium browser if a notification displays a new version
    Click on the "Download" button
    Wait for download and automatic installation
    Open Chromium browser. It is updated!
    To remove it definitively: delete the chrlauncher folder


Package

    Install Chocolatey (A free and open-source package manager) in command-line
    Chromium will be automatically updated via Chocolatey (using our API)
    To remove it definitively: use the "uninstall" command-line via Chocolatey

</details>

<details>

<summary>Windows 8.1, 8, 7, XP, Vista... and old versions</summary>
<br>
Since version 110, Chromium is not available on Windows 7, 8, 8.1, Server 2012 and Server 2012 R2 (Archive: 1)
For help, version 109 works fine. The last stable version for them is 109.0.5414.120

    installer, archive (win64 • stable)
    installer, archive (win32 • stable)
    installer, archive (win64 • stable • ungoogled)
    Thorium releases for Windows 7/8: installer, archive (win32/win64 • stable)


Since version 89, Chromium needs a CPU with SSE3 support (Archive: PDF)
For help, version 88 works fine on older CPU processors. The last stable version is 88.0.4324.190

    installer, archive (win32 • stable)
    installer/archive (win32/win64 • stable • ungoogled)


Since version 50, Chromium is not available on XP and Vista (Archive: 1)
For help, version 49 works fine. The last stable version for Windows XP and Vista is 49.0.2623.112

    installer, archive (win32 • stable • archived source)
    portable (win32 • stable)
    Other old versions: portable (win32 • dev)


Since version 35, Chromium needs a CPU with SSE2 support (Archive: 1)
For help, version 34 works fine on older CPU processors.

    portable (win32 • dev)
    builds before 253860 (win32 • dev)

</details>

#### Chromium for 64-bit Windows

- 🟢 <img src="assets/logo.png" width="20" alt="logo"> [Portable]() • [Archive](https://github.com/Hibbiki/chromium-win64/releases/download/v149.0.7827.156-r162507/chrome.7z) • [Installer](https://github.com/Hibbiki/chromium-win64/releases/download/v149.0.7827.156-r162507/mini_installer.exe) ![Static Badge](https://img.shields.io/badge/Hibbiki-036b96) ![Static Badge](https://img.shields.io/badge/sync-731995) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/win64-%235b6367)

- 🟢 <img src="assets/logo.png" width="20" alt="logo"> [Portable]() • [Archive](https://github.com/macchrome/winchrome/releases/download/v146.7680.246-M146.0.7680.246-r1582197-Win64/ungoogled-chromium-146.0.7680.246-1_Win64.7z) • [Installer](https://github.com/macchrome/winchrome/releases/download/v146.7680.246-M146.0.7680.246-r1582197-Win64/146.0.7680.246_ungoogled_mini_installer.exe) ![Static Badge](https://img.shields.io/badge/Marmaduke-036b96) ![Static Badge](https://img.shields.io/badge/old-b40000) ![Static Badge](https://img.shields.io/badge/ungoogled-731995) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/win64-%235b6367)

- ⚫ <img src="assets/logo.png" width="20" alt="logo"> [Archive](https://github.com/RobRich999/Chromium_Clang/releases/download/v151.0.7874.0-r1641382-win64-avx512/chrome.zip) • [Installer](https://github.com/RobRich999/Chromium_Clang/releases/download/v151.0.7874.0-r1641382-win64-avx512/mini_installer.exe) ![Static Badge](https://img.shields.io/badge/RobRich-036b96) ![Static Badge](https://img.shields.io/badge/avx512-731995) ![Static Badge](https://img.shields.io/badge/modified-%23877105) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/win64-%235b6367)

- ⚫ <img src="assets/logo.png" width="20" alt="logo"> [Portable]() • [Archive](https://github.com/RobRich999/Chromium_Clang/releases/download/v151.0.7874.0-r1641382-win64-avx2/chrome.zip) • [Installer](https://github.com/RobRich999/Chromium_Clang/releases/download/v151.0.7874.0-r1641382-win64-avx2/mini_installer.exe) ![Static Badge](https://img.shields.io/badge/RobRich-036b96) ![Static Badge](https://img.shields.io/badge/avx2-731995) ![Static Badge](https://img.shields.io/badge/modified-%23877105) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/win64-%235b6367)

- ⚫ <img src="assets/logo.png" width="20" alt="logo"> [Portable]() • [Archive](https://github.com/RobRich999/Chromium_Clang/releases/download/v151.0.7874.0-r1641382-win64-avx/chrome.zip) • [Installer](https://github.com/RobRich999/Chromium_Clang/releases/download/v151.0.7874.0-r1641382-win64-avx/mini_installer.exe) ![Static Badge](https://img.shields.io/badge/RobRich-036b96) ![Static Badge](https://img.shields.io/badge/avx-731995) ![Static Badge](https://img.shields.io/badge/modified-%23877105) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/win64-%235b6367)

- 🔴 <img src="assets/logo.png" width="20" alt="logo"> [Portable]() • [Archive](https://storage.googleapis.com/chromium-browser-snapshots/Win_x64/1648942/chrome-win.zip) • [Installer](https://storage.googleapis.com/chromium-browser-snapshots/Win_x64/1648942/mini_installer.exe) ![Static Badge](https://img.shields.io/badge/The_Chromium_Authors-036b96) ![Static Badge](https://img.shields.io/badge/win64-%235b6367)

#### Chromium for 32-bit Windows

- 🟢 <img src="assets/logo.png" width="20" alt="logo"> [Portable]() • [Archive](https://github.com/Hibbiki/chromium-win32/releases/download/v109.0.5414.120-r1070088/chrome.sync.7z) • [Installer](https://github.com/Hibbiki/chromium-win32/releases/download/v109.0.5414.120-r1070088/mini_installer.sync.exe) ![Static Badge](https://img.shields.io/badge/Hibbiki-036b96) ![Static Badge](https://img.shields.io/badge/last--release-b40000) ![Static Badge](https://img.shields.io/badge/sync-731995) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs%2B-%23877105) ![Static Badge](https://img.shields.io/badge/win32-%235b6367)

- 🟢 <img src="assets/logo.png" width="20" alt="logo"> [Portable]() • [Archive](https://github.com/macchrome/winchrome/releases/download/v109.5414.120-M109.0.5414.120-r1070088-Win64/ungoogled-chromium-109.0.5414.130-1_Win32.7z) ![Static Badge](https://img.shields.io/badge/Marmaduke-036b96) ![Static Badge](https://img.shields.io/badge/last--release-b40000) ![Static Badge](https://img.shields.io/badge/ungoogled-731995) ![Static Badge](https://img.shields.io/badge/widevine-%23877105) ![Static Badge](https://img.shields.io/badge/all--codecs-%23877105) ![Static Badge](https://img.shields.io/badge/win32-%235b6367)

- 🔴 <img src="assets/logo.png" width="20" alt="logo"> [Portable]() • [Archive](https://storage.googleapis.com/chromium-browser-snapshots/Win/1648932/chrome-win.zip) • [Installer](https://storage.googleapis.com/chromium-browser-snapshots/Win/1648932/mini_installer.exe) ![Static Badge](https://img.shields.io/badge/The_Chromium_Authors-036b96) ![Static Badge](https://img.shields.io/badge/win32-%235b6367)


# Chromium for 64-bit Windows on Arm

- 🟢 <img src="assets/logo.png" width="20" alt="logo"> [Archive](https://s3armawstosg-2.s3-us-west-2.amazonaws.com/stable/download/v120.0.6099.199-r1668-winarm64/chrome.zip) [Installer](https://s3armawstosg-2.s3-us-west-2.amazonaws.com/stable/download/v120.0.6099.199-r1668-winarm64/mini_installer.exe) ![Static Badge](https://img.shields.io/badge/Arm-036b96) ![Static Badge](https://img.shields.io/badge/old-b40000) ![Static Badge](https://img.shields.io/badge/signed-%23877105) ![Static Badge](https://img.shields.io/badge/win64--arm-%235b6367)

- ⚫ <img src="assets/logo.png" width="20" alt="logo"> [Archive](https://s3armawstosg-2.s3-us-west-2.amazonaws.com/beta/download/v115.0.5790.40-r979-winarm64/chrome.zip) [Installer](https://s3armawstosg-2.s3-us-west-2.amazonaws.com/beta/download/v115.0.5790.40-r979-winarm64/mini_installer.exe) ![Static Badge](https://img.shields.io/badge/Arm-036b96) ![Static Badge](https://img.shields.io/badge/signed-%23877105) ![Static Badge](https://img.shields.io/badge/win64--arm-%235b6367)

- 🟡 <img src="assets/logo.png" width="20" alt="logo"> [Archive](https://s3armawstosg-2.s3-us-west-2.amazonaws.com/canary/download/v122.0.6231.0-r1243752-winarm64/chrome.zip) [Installer](https://s3armawstosg-2.s3-us-west-2.amazonaws.com/canary/download/v122.0.6231.0-r1243752-winarm64/mini_installer.exe) ![Static Badge](https://img.shields.io/badge/Arm-036b96) ![Static Badge](https://img.shields.io/badge/signed-%23877105) ![Static Badge](https://img.shields.io/badge/win64--arm-%235b6367)

# ====== DOWN HERE STILL UNDER MAINTENANCE ======



# Chromium for macOS 12+ 64-bit

- <img src="assets/logo.png" width="20" alt="logo"> [Archive](https://storage.googleapis.com/chromium-browser-snapshots/Mac/1648955/chrome-mac.zip) ![Static Badge](https://img.shields.io/badge/The_Chromium_Authors-036b96) ![Static Badge](https://img.shields.io/badge/mac-%235b6367)


# Chromium for 64-bit macOS on Arm

- <img src="assets/logo.png" width="20" alt="logo"> [Archive](https://github.com/macchrome/macstable) ![Static Badge](https://img.shields.io/badge/Marmaduke-036b96) ![Static Badge](https://img.shields.io/badge/ungoogled-731995) ![Static Badge](https://img.shields.io/badge/mac--arm-%235b6367)

- <img src="assets/logo.png" width="20" alt="logo"> [Archive](https://storage.googleapis.com/chromium-browser-snapshots/Mac_Arm/1648968/chrome-mac.zip) ![Static Badge](https://img.shields.io/badge/The_Chromium_Authors-036b96) ![Static Badge](https://img.shields.io/badge/mac--arm-%235b6367)


# Chromium for Android 10.0+

- <img src="assets/logo.png" width="20" alt="logo"> [Stable Releases](https://github.com/macchrome/droidchrome/releases/download/v148.7778.210-M148.0.7778.210-r1610480-Ungoogled-And64/arm64_ChromePublic_HEVC-148.0.7778.210.apk) ![Static Badge](https://img.shields.io/badge/Marmaduke-036b96) ![Static Badge](https://img.shields.io/badge/ungoogled-731995) ![Static Badge](https://img.shields.io/badge/all--codecs-%23877105) ![Static Badge](https://img.shields.io/badge/android64-%235b6367)

- <img src="assets/logo.png" width="20" alt="logo"> [APK Installer](https://storage.googleapis.com/chromium-browser-snapshots/Android/1648960/chrome-android.zip) ![Static Badge](https://img.shields.io/badge/The_Chromium_Authors-036b96) ![Static Badge](https://img.shields.io/badge/android-%235b6367)