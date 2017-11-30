#!/usr/bin/env bash

if which exa > /dev/null; then
  echo "exa is already installed. Skipping..."
else
  sudo apt install -y libgit2-dev cmake
  cargo install exa
fi
