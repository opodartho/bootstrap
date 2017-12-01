#!/usr/bin/env bash
if [ -d ~/.rbenv ]; then
  echo 'rbenv already installed, skipping.'
else
  sudo apt-get install -y libssl-dev libreadline-dev zlib1g-dev git
  git clone git://github.com/rbenv/rbenv.git ~/.rbenv
  mkdir -p ~/.rbenv/plugins
  pushd ~/.rbenv/plugins
  git clone git://github.com/rbenv/ruby-build.git
  git clone https://github.com/rbenv/rbenv-default-gems.git
  popd
  echo "bundler" | tee ~/.rbenv/default-gems
fi
