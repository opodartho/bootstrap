#!/usr/bin/env bash

if which tmux > /dev/null; then
  echo "tmux already installed. Skipping..."
else
  sudo apt-get install -y tmux
fi
