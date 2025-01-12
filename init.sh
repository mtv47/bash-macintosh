#!/bin/bash


cat << "EOF"
           .:'
      __ :'__
   .'`__`-'__``.
  :__________.-'
  :_________:
   :_________`-.
    `.__.-.__.'
EOF

echo ""
echo "Script by mtv47 to set up a mac for development/personal use"
echo ""

echo "Please enter your choice: "
options=("Set up settings and defaults" 
"Install brew and apps from brew" 
"Install apps from mas"
"Install Miniconda packages"
"Start a jupyter notebook server"
"Quit")

select opt in "${options[@]}"
do
    case $opt in
        "Set up settings and defaults")
            sudo bash defaults.sh
            ;;
        "Install brew and apps from brew")
            sudo bash brew.sh
            ;;
        "Install apps from mas")
            sudo bash mas.sh
            ;;
        "Install Miniconda packages")
            bash conda.sh
            ;;
        "Start a jupyter notebook server")
            jupyter notebook --no-browser --port=8888
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
