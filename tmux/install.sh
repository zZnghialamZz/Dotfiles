#!/usr/bin/env bash

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Create link
ln -s $HOME/.config/tmux/tmux.conf $HOME/.tmux.conf

