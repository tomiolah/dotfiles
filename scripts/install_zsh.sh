#!/bin/bash

function oxide_zsh_theme () {
  # Install Oxide Theme - https://github.com/dikiaap/dotfiles
  wget -O $ZSH_CUSTOM/themes/oxide.zsh-theme https://raw.githubusercontent.com/dikiaap/dotfiles/master/.oh-my-zsh/themes/oxide.zsh-theme
  
  # In .zshrc: ZSH_THEME="oxide"
}

function pi_zsh_theme () {
  # Install PI theme
  wget -O $ZSH_CUSTOM/themes/pi.zsh-theme https://raw.githubusercontent.com/tobyjamesthomas/pi/master/pi.zsh-theme

  # In .zshrc: ZSH_THEME="pi"
}

function install_zsh () {
  # Install ZSH
  sudo apt install -y zsh

  # Install OMZSH
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  # Set up OMZSH custom theme folder
  mkdir -p $ZSH_CUSTOM/themes
}

install_zsh
pi_zsh_theme
