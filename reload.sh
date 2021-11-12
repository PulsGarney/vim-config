#!/usr/bin/env bash

echo "System: $OSTYPE"

cp ./rc/.vimrc ~/.vimrc
cp ./rc/.tmux.conf ~/.tmux.conf

echo "Reloaded!"
