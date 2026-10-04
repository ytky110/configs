#!/bin/sh

if [ "$(hostname)" = kyame -a "$(uname)" = FreeBSD ]
then
    echo "./config => ./freebsd"
    stow -v -D -d "$PWD" -t "$HOME/.config" freebsd/
elif [ "$(hostname)" = potato ]
then
    echo "./config => ./linux-laptop"
    stow -v -D -d "$PWD" -t "$HOME/.config" linux-laptop/
fi

echo "~/.config => ./config"
stow -v -D -d "$PWD" -t "$HOME/.config" config/

echo

echo "~ => ./home"
stow -v -D -d "$PWD" -t "$HOME" home/
