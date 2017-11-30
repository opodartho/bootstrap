#!/usr/bin/env bash

if which zsh > /dev/null; then
  echo "zsh already installed. Skipping..."
else
  sudo apt-get install -y --force-yes zsh
  echo "Configuring zsh as default shell"
  chsh -s $(which zsh)
fi
