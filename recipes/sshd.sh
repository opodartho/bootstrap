#!/usr/bin/env bash

if which sshd > /dev/null; then
  echo "ssh-server is already installed. Skipping..."
else
  sudo apt-get install -y openssh-server
fi
