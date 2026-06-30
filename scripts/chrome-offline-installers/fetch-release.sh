#!/bin/bash

# Get ChromeDownloader.ps1
curl -O https://raw.githubusercontent.com/shawnkhall/Tools/main/ChromeDownloader.ps1

# fetch chrome release and print the output to rawdata.txt
pwsh ChromeDownloader.ps1 win 64 -os 11 -do info >> scripts/chrome-offline-installers/rawdata.txt
pwsh ChromeDownloader.ps1 win 32 -os 10 -do info >> scripts/chrome-offline-installers/rawdata.txt
pwsh ChromeDownloader.ps1 win 64 -os 7 -do info >> scripts/chrome-offline-installers/rawdata.txt
pwsh ChromeDownloader.ps1 win 32 -os 7 -do info >> scripts/chrome-offline-installers/rawdata.txt
pwsh ChromeDownloader.ps1 win 32 -os 5.2 -do info >> scripts/chrome-offline-installers/rawdata.txt

# delete leftovers
rm ChromeDownloader.ps1