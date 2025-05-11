#!/bin/bash

# restore configs

echo "Restoring dotfiles and GNOME settings..."

# Restore .zshrc
cp ~/dotfiles/.zshrc ~/.zshrc
echo "✓ Restored .zshrc"

# Restore .vimrc
cp ~/dotfiles/.vimrc ~/.vimrc

# Restore kitty.conf
mkdir -p ~/.config/kitty/
cp ~/dotfiles/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf
echo "✓ Restored kitty config"

# Restore .tmux.conf
cp ~/dotfiles/.tmux.conf ~/.tmux.conf
echo "✓ Restored .tmux.conf"

# Backup starship prompt custom@newson
cp ~/dotfiles/.config/starship.toml ~/.config/starship.toml
echo "✓ Restored starship.toml"

# Restore .ssh config
mkdir -p ~/.ssh
cp ~/dotfiles/.ssh/config ~/.ssh/config
chmod 600 ~/.ssh/config
echo "✓ Restored SSH config"

# load lazygit colors
mkdir -p ~/.config/lazygit/
cp ~/dotfiles/.config/lazygit/config.yml ~/.config/lazygit/config.yml
echo "✓ Restored lazygit catpuccin color"

# in new devices, may need to chmod 600 sshPub_key to access the repo.

# Load GNOME shell extensions settings
dconf load /org/gnome/shell/extensions/ < ~/dotfiles/gnomeExtensionSettings.dconf
echo "✓ Loaded GNOME shell extensions settings"

# Load GNOME WM keybindings
dconf load /org/gnome/desktop/wm/keybindings/ < ~/dotfiles/window-nav-shortcuts-settings.dconf
echo "✓ Loaded GNOME WM keybindings"

# Optional: Reload GNOME shell (not available on Wayland), logout and login recommended to see all changes

echo "✅ All configurations restored."
