#!/usr/bin/env bash

# install tilde dotfiles
python ./sync.py

#install oh-my-fish dotfiles
python ./sync.py ./omf "$HOME/.config/omf"
