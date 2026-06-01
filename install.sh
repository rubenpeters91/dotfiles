# Create symlinks to the dotfiles and move old config files to a backup location

# Check if .vimrc file exists
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.backup
    echo "Moved old .vimrc file to ~/.vimrc.backup"
fi

# Create symlink to .vimrc file in this repo
ln -s "$(pwd)/.vimrc" ~/.vimrc

# Check if nvim config in .config exists
if [ -f ~/.config/nvim ]; then
    mv ~/.config/nvim ~/.config/nvim_backup
    echo "Moved old nvim config to nvim_backup"
fi

# Create a symlink to .config/nvim dir in this repo
ln -s "$(pwd)/nvim" ~/.config/nvim

# Same for starship.toml which is located in .config
if [ -f ~/.config/starship.toml ]; then
    mv ~/.config/starship.toml ~/.config/starship.toml.backup
    echo "Moved old starship.toml file to ~/.config/starship.toml.backup"
fi

# Create symlink to starship.toml file in this repo
ln -s "$(pwd)/starship.toml" ~/.config/starship.toml
