if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
end

# . $HOME/.aliases.fish
fzf --fish | source
zoxide init fish | source
set_fish_theme fish-default

