#!/bin/bash

#Show Path in Finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder

#Sort folders first in Finder
defaults write com.apple.finder _FXSortFoldersFirst -bool true; killall Finder

#Enable Key Repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

#Disable Disk Warning
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.DiskArbitration.diskarbitrationd.plist DADisableEjectNotification -bool YES && sudo pkill diskarbitrationd

#Change Screenshot Default to JPG
defaults write com.apple.screencapture type jpg

#Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

#Shorten autohide animation
defaults write com.apple.dock autohide-time-modifier -float 0.5 && killall Dock

#Disable show recent
defaults write com.apple.dock show-recents -bool false && killall Dock

#Minimize animation effect to scale
defaults write com.apple.dock mineffect -string "scale" && killall Dock

#Set the location of screenshots to ~/Pictures
defaults write com.apple.screencapture location -string "$HOME/Pictures" && killall SystemUIServer

#Disable date in screenshots
defaults write com.apple.screencapture "include-date" -bool "false" 

#Show extensions of files in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

#Show hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles -bool true

#Set the defaults view of Finder to list
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv" && killall Finder

#Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false && killall Finder

#Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false && killall Finder

#Keep folders on top in Desktop
defaults write com.apple.finder _FXSortFoldersFirst -bool true && killall Finder

#Hide the icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false && killall Finder

#Don't offer new disks for Time Machine to backup
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true && killall SystemUIServer

#Mac App Store update check frequency to 2
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 2 && killall SystemUIServer

#Expand print dialog by default 
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true && killall SystemUIServer