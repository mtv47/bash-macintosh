#!/bin/bash

#Ask user if he wants to install brew
echo "Do you want to install and/or use brew? (Y/n)"
answer='y'
read answer
if [[ $answer == "y" || $answer == "" ]]
then
    echo "Checking brew"
    which -s brew
    if [[ $? != 0 ]] ; then
        echo "Installing Homebrew"
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        echo "Homebrew is already installed"
        echo "Updating Homebrew"
        brew update
        echo "Upgrading Homebrew"
        brew upgrade
    fi

    echo ""
    echo "Installing Homebrew packages"
    echo ""

    packages=("htop" "wget" "git" "speedtest-cli" "mas"
    "docker-compose")

    for package in "${packages[@]}"
    do
        echo "Installing $package"
        if brew list $package &>/dev/null; then
            echo "$package is already installed"
        else
            brew install $package && echo "$package is installed"
        fi
        echo ""
    done
    
    echo ""
    echo "Installing Homebrew casks"
    echo ""

    casks=("brave-browser" "kitty" "coconutbattery" "amethyst" "turbo-boost-switcher" 
    "vlc" "appcleaner" "balenaetcher" "imageoptim" "dropzone" "tailscale"
    "protonvpn" "protonmail-bridge" "youtube-dl" "deluge" "github" 
    "visual-studio-code" "docker" "librewolf" "obsidian" "jellyfin-media-player" "flux")

    for cask in "${casks[@]}"
    do

        if brew list $cask &>/dev/null; then
            echo "$cask is already installed"
        else
            echo "Do you want to install $cask? (Y/n)"
            read -s -n 1 answer
            if [[ $answer == "y" || $answer == "" ]]
            then
                brew install --cask $cask
            fi
            echo ""
        fi

    done


    echo ""
    echo "Installing Scala"
    echo ""

    if brew list scala &>/dev/null; then
        echo "Scala is already installed"
    else
        echo "Do you want to install scala? (Y/n)"
            read -s -n 1 answer
            if [[ $answer == "y" || $answer == "" ]]
            then
                brew install coursier/formulas/coursier && cs setup
            fi
            echo ""
    fi

    echo ""
    echo "Installing miniconda"
    echo ""

    if brew list miniconda &>/dev/null; then
        echo "Miniconda is already installed"
    else
        echo "Do you want to install miniconda? (Y/n)"
            read -s -n 1 answer
            if [[ $answer == "y" || $answer == "" ]]
            then
                brew install --cask miniconda
            fi
            echo ""
    fi

fi
