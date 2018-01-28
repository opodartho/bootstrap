#!/usr/bin/env bash
if [ -d ~/.erlenv ]; then
  echo 'erlenv already installed. Skipping...'
else
  git clone https://github.com/talentdeficit/erlenv.git ~/.erlenv
fi
