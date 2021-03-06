#/usr/bin/env bash

if which nvim > /dev/null ; then
  echo "nvim already installed. Skipping..."
else
  sudo add-apt-repository --remove -y ppa:neovim-ppa/unstable
  sudo add-apt-repository -y ppa:neovim-ppa/unstable
  sudo apt-get update
  sudo apt-get install -y --force-yes neovim
  sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
  sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
  sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
fi
