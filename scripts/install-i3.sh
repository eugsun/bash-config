#!/bin/bash

DOTFILE_BASE=$HOME/.dotfiles
if [ -d $DOTFILE_BASE ]; then
    ln -s $DOTFILE_BASE/i3 $HOME/.config/i3
    ln -s $DOTFILE_BASE/i3status $HOME/.config/i3status
else
    echo "The .dotfiles folder does not exist."
fi
