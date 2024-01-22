#!/bin/bash
set -e
apt update
apt install -y wget git 
wget --directory-prefix  /tmp https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
tar -xvf /tmp/nvim-linux64.tar.gz --directory=/tmp
cp -r /tmp/nvim-linux64/ /opt/nvim
ln -sf /opt/nvim/bin/nvim /usr/bin/nvim
git clone https://github.com/tawat-ki/dotfiles /tmp/dotfiles
mkdir -p ~/.config/
cp -r /tmp/dotfiles/.config/nvim  ~/.config/nvim 
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim --headless +PackerSync +qa
