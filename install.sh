#!/bin/bash

current_user=$(whoami)

if [ "$current_user" == "root" ]; then
    apt update -y
    apt install git tmux
else
    sudo apt update -y
    sudo apt install git tmux
fi

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

mkdir -p ~/.config/tmux/

cp tmux.conf ~/.config/tmux/tmux.conf

tmux source ~/.config/tmux/tmux.conf
