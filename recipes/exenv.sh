#!/usr/bin/env bash
if [ -d ~/.exenv ]; then
  echo 'exenv already installed. Skipping...'
else
  #sudo apt-get install -y erlang erlang-doc
  git clone https://github.com/mururu/exenv.git ~/.exenv
  mkdir -p ~/.exenv/plugins
  git clone https://github.com/mururu/elixir-build.git ~/.exenv/plugins/elixir-build
fi
