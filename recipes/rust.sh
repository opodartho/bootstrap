#!/usr/bin/env bash

if which rustup > /dev/null; then
  echo "rust is already installed. Skipping..."
else
  curl https://sh.rustup.rs -sSf | sh
fi
