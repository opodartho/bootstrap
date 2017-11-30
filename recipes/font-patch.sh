#!/usr/bin/env bash

if [[ -d $HOME/.local/share/fonts ]]; then
  echo "Powerline font patches already installed. Skipping..."
else
  git clone https://github.com/powerline/fonts.git --depth=1
  cd fonts
  sh install.sh
  cd ..
  rm -rf fonts
  fc-cache -vf
fi
