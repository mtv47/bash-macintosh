#!/bin/bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=\'fg=60\' >> $ZSH_CUSTOM/zsh-autosuggestions_custom.zsh

#For VSCode: terminal.integrated.fontFamily = MesloLGS NF