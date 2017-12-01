#!/usr/bin/env bash
if [ -d ~/.pyenv ]; then
  echo 'pyenv already installed. Skipping...'
else
  sudo apt-get install -y libssl-dev libreadline-dev zlib1g-dev git
  sudo apt-get install -y build-essential checkinstall
  sudo apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
  git clone https://github.com/pyenv/pyenv.git ~/.pyenv
  mkdir -p ~/.pyenv/plugins
  pushd ~/.pyenv/plugins
  git clone https://github.com/pyenv/pyenv-ccache.git
  git clone https://github.com/pyenv/pyenv-version-ext.git
  popd
fi
