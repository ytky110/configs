#!/bin/sh

if [ "$(hostname)" = kyame -a "$(uname)" = FreeBSD ]
then
    echo "./config => ./freebsd"
    stow -v -d "$PWD" -t "$HOME/.config" freebsd/
elif [ "$(hostname)" = potato ]
then
    echo "./config => ./linux-laptop"
    stow -v -d "$PWD" -t "$HOME/.config" linux-laptop/
fi

echo

echo "~/.config => ./config"
stow -v -d "$PWD" -t "$HOME/.config" config/

echo

echo "~ => ./home"
stow -v -d "$PWD" -t "$HOME" home/
