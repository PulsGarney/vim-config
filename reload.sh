#!/usr/bin/env bash

echo "System: $OSTYPE"

cp ./rc/.vimrc ~/.vimrc
cp ./rc/.screenrc ~/.screenrc

cp ./rc/.shellrc ~/.shellrc
. ~/.shellrc

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    cp ./rc/.linuxrc ~/.linuxrc
    . ~/.linuxrc

elif [[ "$OSTYPE" == "darwin"* ]]; then
    # MacOS
    cp ./rc/.macrc ~/.macrc
    # . ~/.macrc

fi

echo "Reloaded!"
