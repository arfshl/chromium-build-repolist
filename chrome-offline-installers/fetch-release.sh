#!/bin/bash

# Get ChromeDownloader.ps1
curl -O https://raw.githubusercontent.com/shawnkhall/Tools/main/ChromeDownloader.ps1

# Fetch chrome release and print the output to rawdata.txt

pwsh ChromeDownloader.ps1 win 64 -os 11 -do info >> rawdata.txt
pwsh ChromeDownloader.ps1 win 32 -os 10 -do info >> rawdata.txt
pwsh ChromeDownloader.ps1 win 64 -os 7 -do info >> rawdata.txt
pwsh ChromeDownloader.ps1 win 32 -os 7 -do info >> rawdata.txt
pwsh ChromeDownloader.ps1 win 32 -os 5.1 -do info >> rawdata.txt