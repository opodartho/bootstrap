#!/usr/bin/env bash
if which docker-machine > /dev/null; then
  echo "docker-machine already installed. Skipping ..."
else
  last_release=`curl -i https://api.github.com/repos/docker/machine/releases | grep "\"tag_name\"" | tr "\"" " " | awk '{print $3}' | head -1`
  echo "Installing docker-machine ..."
  curl -L https://github.com/docker/compose/releases/download/${last_release}/docker-machine-`uname -s`-`uname -m` > docker-machine
  sudo mv docker-machine /usr/local/bin/docker-machine
  sudo chmod +x /usr/local/bin/docker-machine
fi
