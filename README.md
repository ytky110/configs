# Configs

My principal configurations under ~/.config/

The `home/` directory contains the files symlinked to home.
The `freebsd/` direcotry contains FreeBSD unique settings (under ~/.config/).
The `linux-laptop/` direcotry contains my Linux laptop unique settings (under ~/.config/).

> GNU Stow is useful for managing and installing these files.

I wrote `mklinks.sh` and `rmlinks.sh`, so you can use them instead of typing the commands manually.

```
stow -v -d "path/to/configs" -t "$HOME/" home/
stow -v -d "path/to/configs" -t "$HOME/.config/" config/
```
