# Configs

My principal configurations under ~/.config/

The home/ directory contains the files symlinked to home.

GNU Stow is useful for managing and installing these files.

```
stow -v -d "path/to/configs" -t "$HOME/" home/
stow -v -d "path/to/configs" -t "$HOME/.config/" config/
```
