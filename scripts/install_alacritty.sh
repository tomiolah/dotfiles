#!/bin/bash

set -eu

# Get latest release URL
LATEST=$(curl -s https://api.github.com/repos/alacritty/alacritty/releases/latest | grep 'browser_download_url.*amd64.deb' | cut -d"\"" -f4)

wget -qi $LATEST 

# Copy custom config to Alacritty config path
CONFIG="$HOME/.config/alacritty/"

if [[ $(pwd | rev | cut -d/ -f1 | rev) == "scripts" ]]
then
  CUSTOM_CONFIG="../alacritty.yml"
else
  if [[ $(pwd | rev | cut -d/ -f1 | rev) == "dotfiles" ]]
  then
    CUSTOM_CONFIG="./alacritty.yml"
  else
    echo "Invalid path! Please go into the dotfiles repo!"
    exit 1
  fi
fi

mkdir -p $CONFIG

cat $CUSTOM_CONFIG >"$CONFIG/alacritty.yml"

