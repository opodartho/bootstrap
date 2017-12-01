#!/usr/bin/env bash
if [ -d ~/.goenv ]; then
  echo 'goenv already installed. Skipping...'
else
  git clone https://github.com/syndbg/goenv.git ~/.goenv
fi
