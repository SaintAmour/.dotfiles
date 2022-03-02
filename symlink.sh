# Symlink .gitconfig
rm -i "$HOME/.gitconfig"
ln -s "$HOME/dotfiles/.gitconfig" "$HOME/.gitconfig"

# Symlink .zshrc
rm -i "$HOME/.zshrc"
ln -s "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"

# Symlink .nvidia-settings-rc
rm -i "$HOME/.nvidia-settings-rc"
ln -s "$HOME/dotfiles/.nvidia-settings-rc" "$HOME/.nvidia-settings-rc"

# Symlink .alacritty.yml
rm -i "$HOME/.alacritty.yml"
ln -s "$HOME/dotfiles/.alacritty.yml" "$HOME/.alacritty.yml"

# Symlink .tmux.conf
rm -i "$HOME/.tmux.conf"
ln -s "$HOME/dotfiles/.tmux.conf" "$HOME/.tmux.conf"

# Symlink init.vim
# Check if $HOME/.config/nvim exists
if [ -d "$HOME/.config/nvim" ]; then
    rm -drf "$HOME/.config/nvim"
fi
ln -s "$HOME/dotfiles/nvim" "$HOME/.config/nvim"

# Symlink i3
# Check if $HOME/.config/i3 exists
if [ -d "$HOME/.config/i3" ]; then
    rm -drf "$HOME/.config/i3"
fi
ln -s "$HOME/dotfiles/i3" "$HOME/.config/i3"

# Symlink i3status
# Check if $HOME/.config/i3status exists
if [ -d "$HOME/.config/i3status" ]; then
    rm -drf "$HOME/.config/i3status"
fi
ln -s "$HOME/dotfiles/i3status" "$HOME/.config/i3status"

# Symlink polybar
# Check if $HOME/.config/polybar exists
if [ -d "$HOME/.config/polybar" ]; then
    rm -drf "$HOME/.config/polybar"
fi
ln -s "$HOME/dotfiles/polybar" "$HOME/.config/polybar"
