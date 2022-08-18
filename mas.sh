#!/bin/bash

echo "Do you want to install Bitwarden? (Y/n)"
read -s -n 1 answer
if [[ $answer == "y" || $answer == "" ]]
then
    mas install 1352778147
fi
echo ""

echo "Do you want to install Telegram? (Y/n)"
read -s -n 1 answer
if [[ $answer == "y" || $answer == "" ]]
then
    mas install 747648890
fi
echo ""

echo "Do you want to install Xcode? (Y/n)"
read -s -n 1 answer
if [[ $answer == "y" || $answer == "" ]]
then
    mas install 497799835
fi
echo ""

echo "Do you want to install iStat Menus? (Y/n)"
read -s -n 1 answer
if [[ $answer == "y" || $answer == "" ]]
then
    mas install 1319778037
fi
echo ""
