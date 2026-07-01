#!/bin/bash
# This script is licensed under GPLv3

# Get ChromeDownloader.ps1
echo "Downloading ChromeDownloader.ps1 ..."
curl -o scripts/chrome-offline-installers/ChromeDownloader.ps1 https://raw.githubusercontent.com/shawnkhall/Tools/main/ChromeDownloader.ps1 

# fetch chrome release and print the output to rawdata.txt
echo "Fetching latest Google Chrome release info ..."
rm scripts/chrome-offline-installers/rawdata.txt
pwsh scripts/chrome-offline-installers/ChromeDownloader.ps1 win 64 -os 11 -do info >> scripts/chrome-offline-installers/rawdata.txt
pwsh scripts/chrome-offline-installers/ChromeDownloader.ps1 win 32 -os 10 -do info >> scripts/chrome-offline-installers/rawdata.txt
pwsh scripts/chrome-offline-installers/ChromeDownloader.ps1 win 64 -os 7 -do info >> scripts/chrome-offline-installers/rawdata.txt
pwsh scripts/chrome-offline-installers/ChromeDownloader.ps1 win 32 -os 7 -do info >> scripts/chrome-offline-installers/rawdata.txt
pwsh scripts/chrome-offline-installers/ChromeDownloader.ps1 win 32 -os xp -do info >> scripts/chrome-offline-installers/rawdata.txt
pwsh scripts/chrome-offline-installers/ChromeDownloader.ps1 mac -do info >> scripts/chrome-offline-installers/rawdata.txt

# generate readme
ruby scripts/chrome-offline-installers/generate-readme.rb