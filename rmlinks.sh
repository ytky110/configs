#!/bin/sh

echo "~/.config => ./config"
stow -v -D -d "$PWD" -t "$HOME/.config" config/

echo

echo "~ => ./home"
stow -v -D -d "$PWD" -t "$HOME" home/
