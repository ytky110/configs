if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
end

# . $HOME/.aliases.fish
if command -q fzf
    fzf --fish | source
end
set_fish_theme fish-default

