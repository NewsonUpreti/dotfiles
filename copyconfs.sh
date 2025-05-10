#!/bin/bash

echo "🔄 Backing up your configuration files to ~/dotfiles..."

mkdir -p ~/dotfiles/
# Backup .zshrc
cp ~/.zshrc ~/dotfiles/.zshrc
echo "✓ Copied .zshrc"

# Optional: Backup .bashrc
# cp ~/.bashrc ~/dotfiles/.bashrc
# echo "✓ Copied .bashrc"

# Optional: Backup Neovim config
# cp -r ~/.config/nvim ~/dotfiles/nvim
# echo "✓ Copied Neovim config"

# Backup kitty.conf
cp ~/.config/kitty/kitty.conf ~/dotfiles/kitty.conf
echo "✓ Copied kitty.conf"

# Backup .tmux.conf
cp ~/.tmux.conf ~/dotfiles/.tmux.conf
echo "✓ Copied .tmux.conf"

# Backup SSH config
mkdir -p ~/dotfiles/.ssh/
cp ~/.ssh/config ~/dotfiles/.ssh/config
echo "✓ Copied SSH config"

# Backup GNOME shell extension settings
dconf dump /org/gnome/shell/extensions/ > ~/dotfiles/gnomeExtensionSettings.dconf
echo "✓ Dumped GNOME shell extensions to gnomeExtensionSettings.dconf"

# Backup GNOME WM keybindings
dconf dump /org/gnome/desktop/wm/keybindings/ > ~/dotfiles/window-nav-shortcuts-settings.dconf
echo "✓ Dumped GNOME window manager keybindings"

echo "✅ All selected configurations have been backed up to ~/dotfiles/"
