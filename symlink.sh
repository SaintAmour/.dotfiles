# Symlink .gitconfig
rm -i "$HOME/.gitconfig"
ln -s "$HOME/.dotfiles/.gitconfig" "$HOME/.gitconfig"

# Symlink .zshrc
rm -i "$HOME/.zshrc"
ln -s "$HOME/.dotfiles/.zshrc" "$HOME/.zshrc"

# Symlink init.vim
# Check if $HOME/.config.nvim exists
if [ -d "$HOME/.config/nvim" ]; then
    rm -i "$HOME/.config/nvim/init.vim"
else
    mkdir "$HOME/.config/nvim"
fi
ln -s "$HOME/.dotfiles/init.vim" "$HOME/.config/nvim/init.vim"
