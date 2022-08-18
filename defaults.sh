#!/bin/bash

echo "Show Path in Finder"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder
echo ""

echo "Sort folders first in Finder"
defaults write com.apple.finder _FXSortFoldersFirst -bool true; killall Finder
echo ""

echo "Enable Key Repeat"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
echo ""

echo "Disable Disk Warning"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.DiskArbitration.diskarbitrationd.plist DADisableEjectNotification -bool YES && sudo pkill diskarbitrationd
echo ""

echo "Change Screenshot Default to JPG"
defaults write com.apple.screencapture type jpg
echo ""

echo "Disable the sound effects on boot"
sudo nvram SystemAudioVolume=" "
echo ""

echo "Shorten autohide animation"
defaults write com.apple.dock autohide-time-modifier -float 0.5 && killall Dock
echo ""

echo "Disable show recent"
defaults write com.apple.dock show-recents -bool false && killall Dock
echo ""

echo "Minimize animation effect to scale"
defaults write com.apple.dock mineffect -string "scale" && killall Dock
echo ""

echo "Set the location of screenshots to ~/Pictures"
defaults write com.apple.screencapture location -string "$HOME/Pictures" && killall SystemUIServer
echo ""

echo "Disable date in screenshots"
defaults write com.apple.screencapture "include-date" -bool "false" 
echo ""

echo "Show extensions of files in Finder"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
echo ""

echo "Show hidden files in Finder"
defaults write com.apple.finder AppleShowAllFiles -bool true
echo ""

echo "Set the defaults view of Finder to list"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv" && killall Finder
echo ""

echo "Disable the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false && killall Finder
echo ""

echo "Disable the warning before emptying the Trash"
defaults write com.apple.finder WarnOnEmptyTrash -bool false && killall Finder
echo ""

echo "Keep folders on top in Desktop"
defaults write com.apple.finder _FXSortFoldersFirst -bool true && killall Finder
echo ""

echo "Hide the icons for hard drives, servers, and removable media on the desktop"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false && killall Finder
echo ""

echo "Don't offer new disks for Time Machine to backup"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true && killall SystemUIServer
echo ""

echo "Mac App Store update check frequency to 2"
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 2 && killall SystemUIServer
echo ""

echo "Expand print dialog by default"
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true && killall SystemUIServer
echo ""