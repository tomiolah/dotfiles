#!/bin/bash

# Install ZSH
sudo apt install -y zsh

# Install Oh-My-ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set up OMZSH custom theme folder
mkdir -p $ZSH_CUSTOM/themes

# Install Oxide Theme - https://github.com/dikiaap/dotfiles
wget -O $ZSH_CUSTOM/themes/oxide.zsh-theme https://raw.githubusercontent.com/dikiaap/dotfiles/master/.oh-my-zsh/themes/oxide.zsh-theme

# In .zshrc: ZSH_THEME="oxide"

# Install PI theme
wget -O $ZSH_CUSTOM/themes/pi.zsh-theme https://raw.githubusercontent.com/tobyjamesthomas/pi/master/pi.zsh-theme

# In .zshrc: ZSH_THEME="pi"
