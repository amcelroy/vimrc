DIR="~/.config/nvim"

if [ -d "$DIR" ]; then
    mkdir ~/.config
    mkdir ~/.config/nvim
    mkdir ~/.config/nvim/autoload
    mkdir ~/.config/nvim/plugged
else
    cp init.vim ~/.config/nvim
fi

