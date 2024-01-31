#!/bin/bash
apt install -y zsh
ln -s ~/dotfiles/.zshrc ~/.zshrc
echo "export TERM=xterm-256color" >> ~/.zshrc
