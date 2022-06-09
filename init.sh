#!/bin/bash
sudo scutil --set ComputerName "macintosh"
sudo scutil --set LocalHostName "macintosh"
sudo scutil --set HostName "macintosh"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"