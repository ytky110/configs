#!/bin/sh

echo "./config => ./unique"
stow -v -d "$PWD" -t "config/" unique/

echo

echo "~/.config => ./config"
stow -v -d "$PWD" -t "$HOME/.config" config/

echo

echo "~ => ./home"
stow -v -d "$PWD" -t "$HOME" home/
