#!/bin/bash
# A bash script that prepares the OS
# before running the scripts

# Clones the repository
[ -d "$HOME/bash-macintosh" ] || git clone https://github.com/mtv47/bash-macintosh.git $HOME/bash-macintosh

cd $HOME/bash-macintosh

clear
sudo bash init.sh
