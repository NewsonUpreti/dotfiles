#!/bin/bash

echo "🔄 Backing up your configuration files to ~/dotfiles..."

mkdir -p ~/dotfiles/.config
mkdir -p ~/dotfiles/.config/kitty/
mkdir -p ~/dotfiles/.ssh/
mkdir -p ~/dotfiles/.config/lazygit/
# Backup .zshrc
cp ~/.zshrc ~/dotfiles/.zshrc
echo "✓ Copied .zshrc"

# Optional: Backup .bashrc
# cp ~/.bashrc ~/dotfiles/.bashrc
# echo "✓ Copied .bashrc"

# Optional: Backup Neovim config
# cp -r ~/.config/nvim ~/dotfiles/nvim
# echo "✓ Copied Neovim config"

# Backup .vimrc
cp ~/.vimrc ~/dotfiles/.vimrc 
echo "✓ Copied .vimrc"

# Backup kitty.conf
cp ~/.config/kitty/kitty.conf ~/dotfiles/.config/kitty/kitty.conf
echo "✓ Copied kitty.conf"

# Backup starship prompt custom@newson
cp ~/.config/starship.toml ~/dotfiles/.config/starship.toml
echo "✓ Copied starship.toml"

# Backup .tmux.conf
cp ~/.tmux.conf ~/dotfiles/.tmux.conf
echo "✓ Copied .tmux.conf"

# Backup SSH config
cp ~/.ssh/config ~/dotfiles/.ssh/config
echo "✓ Copied SSH config"

# Backup lazygit colors
cp ~/.config/lazygit/config.yml ~/dotfiles/.config/lazygit/config.yml
echo "✓ Backed up lazygit catpuccin color"

# Backup GNOME shell extension settings
dconf dump /org/gnome/shell/extensions/ > ~/dotfiles/gnomeExtensionSettings.dconf
echo "✓ Dumped GNOME shell extensions to gnomeExtensionSettings.dconf"

# Backup GNOME WM keybindings
dconf dump /org/gnome/desktop/wm/keybindings/ > ~/dotfiles/window-nav-shortcuts-settings.dconf
echo "✓ Dumped GNOME window manager keybindings"

echo "✅ All selected configurations have been backed up to ~/dotfiles/"
