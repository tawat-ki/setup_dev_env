#!/bin/bash
set -e
bash ~/dotfiles/ja_setup.sh
echo "alias ja='~/dotfiles/ja_make_pair.sh'" >> ~/.bashrc
