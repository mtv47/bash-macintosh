#!/bin/bash

#Set the mac name
sudo scutil --set ComputerName "macintosh"
sudo scutil --set LocalHostName "macintosh"
sudo scutil --set HostName "macintosh"

#Show Path in Finder
- defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder

#Sort folders first in Finder
- defaults write com.apple.finder _FXSortFoldersFirst -bool true; killall Finder

#Enable Key Repeat
- defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

#Disable Disk Warning
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.DiskArbitration.diskarbitrationd.plist DADisableEjectNotification -bool YES && sudo pkill diskarbitrationd

#Basic.sh
sudo bash brew.sh
sudo bash mas.sh