function set_fish_theme
    set dir $HOME/.config/fish/themes
    if test (count $argv) = 0
        echo "usage: set_fish_theme <theme>"
        echo "themes:"
        for file in $dir/*
            echo "    $(basename $file .fish)"
        end
        return
    end

    set name $argv[1]
    set file $dir/$name.fish
    if test -f $file
        source $file
    else
        echo "The theme $name doesn't exist."
    end
    return
end
