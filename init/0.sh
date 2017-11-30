#!/usr/bin/env bash

sudo sed -i "s|bd.||g" /etc/apt/sources.list

sudo dpkg --add-architecture i386

# update and upgrade
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y
sudo apt-get autoclean -y
sudo apt-get install -f -y
