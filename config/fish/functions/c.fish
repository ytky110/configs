function c
    if command -q $argv[1]
        command $argv[1]
    else
        echo "command '$argv[1]' doesn't exist" >&2
    end
end
