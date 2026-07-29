test -d $HOME/bin && fish_add_path $HOME/bin
test -d $HOME/.local/bin && fish_add_path $HOME/.local/bin
test -d $HOME/.cargo/bin && fish_add_path $HOME/.cargo/bin

test -d $HOME/.ytk/bin && fish_add_path $HOME/.ytk/bin
test -d $HOME/.yackman/bin && fish_add_path $HOME/.yackman/bin
test -d $HOME/.nyacksys/bin && fish_add_path $HOME/.nyacksys/bin
test -d $HOME/.nycksys/local/bin && fish_add_path $HOME/.nycksys/local/bin
test -d $HOME/.ypkg.d/local/bin && fish_add_path $HOME/.ypkg.d/local/bin

