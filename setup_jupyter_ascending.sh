#!/bin/bash
set -e
bash ~/dotfiles/ja_setup.sh
pip install jupyterthemes
jt -t oceans16
echo "alias ja='~/dotfiles/ja_make_pair.sh'" >> ~/.bashrc
