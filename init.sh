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

#Basic.sh
sudo bash brew.sh
sudo bash mas.sh