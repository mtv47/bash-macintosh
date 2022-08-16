#!/bin/bash

#Set the mac name
sudo scutil --set ComputerName "macintosh"
sudo scutil --set LocalHostName "macintosh"
sudo scutil --set HostName "macintosh"

#Install xcode-select
xcode-select —install

#Basic.sh
sudo bash defaults.sh
sudo bash brew.sh
sudo bash mas.sh