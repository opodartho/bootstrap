#!/usr/bin/env bash

if which ag > /dev/null; then
  echo "ag already installed. Skipping..."
else
  sudo apt-get install -y silversearcher-ag
fi
