#!/usr/bin/env bash

if [ -d $HOME/.dotfiles ]; then
  echo "dotfiles already installed. Skipping..."
else
  git clone https://github.com/opodartho/dotfiles $HOME/.dotfiles
  source $HOME/.dotfiles/install
fi
