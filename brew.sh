#!/bin/bash

#Ask user if he wants to install brew
echo "Do you want to install and/or use brew? (Y/n)"
answer='y'
read answer
if [[ $answer == "y" || $answer == "" ]]
then
    which -s brew
    if [[ $? != 0 ]] ; then
        # Install Homebrew
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        brew update
    fi

    #Install brew packages
    echo "Installing htop"
    if brew list htop &>/dev/null; then
        echo "htop is already installed"
    else
        brew install htop && echo "htop is installed"
    fi

    echo "Installing wget"
    if brew list wget &>/dev/null; then
        echo "wget is already installed"
    else
        brew install wget && echo "wget is installed"
    fi

    echo "Installing git"
    if brew list git &>/dev/null; then
        echo "git is already installed"
    else
        brew install git && echo "git is installed"
    fi

    echo "Installing speedtest-cli"
    if brew list speedtest-cli &>/dev/null; then
        echo "speedtest-cli is already installed"
    else
        brew install speedtest-cli && echo "speedtest-cli is installed"
    fi

    echo "Installing mas"
    if brew list mas &>/dev/null; then
        echo "mas is already installed"
    else
        brew install mas && echo "mas is installed"
    fi
    

    #Ask user if he wants to install brave-browser
    echo "Do you want to install brave-browser? (Y/n)"
    read -s -n 1 answer
    if [[ $answer == "y" || $answer == "" ]]
    then
        brew install --cask brave-browser
        echo "Installed brave-browser"
    fi

    #Ask user if he wants to install kitty
    echo "Do you want to install kitty? (Y/n)"
    read -s -n 1 answer
    if [[ $answer == "y" || $answer == "" ]]
    then
        brew install --cask kitty
        echo "Installed kitty"
    fi

    #Ask user if he wants to install coconutbattery
    echo "Do you want to install coconutbattery? (Y/n)"
    read -s -n 1 answer
    if [[ $answer == "y" || $answer == "" ]]
    then
        brew install --cask coconutbattery
        echo "Installed coconutbattery"
    fi

    #Ask user if he wants to install amethyst
    echo "Do you want to install amethyst? (Y/n)"
    read -s -n 1 answer
    if [[ $answer == "y" || $answer == "" ]]
    then
        brew install --cask amethyst
        echo "Installed amethyst"
    fi

    #Ask user if he wants to install turbo-boost-switcher
    echo "Do you want to install turbo-boost-switcher? (Y/n)"
    read -s -n 1 answer
    if [[ $answer == "y" || $answer == "" ]]
    then
        brew install --cask turbo-boost-switcher
        echo "Installed turbo-boost-switcher"
    fi

    #Ask user if he wants to install vlc
    echo "Do you want to install vlc? (Y/n)"
    read -s -n 1 answer
    if [[ $answer == "y" || $answer == "" ]]
    then
        brew install --cask vlc
        echo "Installed vlc"
    fi

    #Ask user if he wants to install appcleaner
    echo "Do you want to install appcleaner? (Y/n)"
    read -s -n 1 answer
    if [[ $answer == "y" || $answer == "" ]]
    then
        brew install --cask appcleaner
        echo "Installed appcleaner"
    fi

    #Ask user if he wants to install balenaetcher
    echo "Do you want to install balenaetcher? (Y/n)"
    read -s -n 1 answer
    if [[ $answer == "y" || $answer == "" ]]
    then
        brew install --cask balenaetcher
        echo "Installed balenaetcher"
    fi

    #Ask user if he wants to install imageoptim
    echo "Do you want to install imageoptim? (Y/n)"
    read -s -n 1 answer
    if [[ $answer == "y" || $answer == "" ]]
    then
        brew install --cask imageoptim
        echo "Installed imageoptim"
    fi

    #Ask user if he wants to install dropzone
    echo "Do you want to install dropzone? (Y/n)"
    read -s -n 1 answer
    if [[ $answer == "y" || $answer == "" ]]
    then
        brew install --cask dropzone
        echo "Installed dropzone"
    fi

    #Ask user if he wants to install tailsscale
    echo "Do you want to install tailscale? (Y/n)"
    read -s -n 1 answer
    if [[ $answer == "y" || $answer == "" ]]
    then
        brew install --cask tailscale
        echo "Installed tailscale"
    fi

    #Ask user if he wants to install protonvpn
    echo "Do you want to install protonvpn? (Y/n)"
    read -s -n 1 answer
    if [[ $answer == "y" || $answer == "" ]]
    then
        brew install --cask protonvpn
        echo "Installed protonvpn"
    fi

    #Ask user if he wants to install protonmail-bridge
    echo "Do you want to install protonmail-bridge? (Y/n)"
    read -s -n 1 answer
    if [[ $answer == "y" || $answer == "" ]]
    then
        brew install --cask protonmail-bridge
        echo "Installed protonmail-bridge"
    fi

    #Ask user if he wants to install youtube-dl
    echo "Do you want to install youtube-dl? (Y/n)"
    read -s -n 1 answer
    if [[ $answer == "y" || $answer == "" ]]
    then
        brew install --cask youtube-dl
        echo "Installed youtube-dl"
    fi

    #Ask user if he wants to install deluge
    echo "Do you want to install deluge? (Y/n)"
    read -s -n 1 answer
    if [[ $answer == "y" || $answer == "" ]]
    then
        brew install --cask deluge
        echo "Installed deluge"
    fi

    #Ask user if he wants to install github
    echo "Do you want to install github? (Y/n)"
    read -s -n 1 answer
    if [[ $answer == "y" || $answer == "" ]]
    then
        brew install --cask github
        echo "Installed github"
    fi
    
    #Ask user if he wants to install visual-studio-code
    echo "Do you want to install visual-studio-code? (Y/n)"
    read -s -n 1 answer
    if [[ $answer == "y" || $answer == "" ]]
    then
        brew install --cask visual-studio-code
        echo "Installed visual-studio-code"
    fi

fi
