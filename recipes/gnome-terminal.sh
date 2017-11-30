#!/usr/bin/env bash

if which gnome-terminal > /dev/null; then
  echo "gnome-terminal is already installed. Skipping..."
else
  sudo apt-get install -y gnome-terminal
  gsettings set org.gnome.desktop.default-applications.terminal exec gnome-terminal
  gsettings set org.gnome.desktop.default-applications.terminal exec-arg ''
fi
