#!/usr/bin/env bash

# copy fonts
cp ./fonts/* $HOME/Library/Fonts/

# install tilde dotfiles
python ./sync.py

#install oh-my-fish dotfiles
python ./sync.py ./omf $HOME/.config/omf
