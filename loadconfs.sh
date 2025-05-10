
#!/bin/bash

echo "Restoring dotfiles and GNOME settings..."

# Restore .zshrc
cp ~/dotfiles/.zshrc ~/.zshrc
echo "✓ Restored .zshrc"

# Restore kitty.conf
mkdir -p ~/.config/kitty/
cp ~/dotfiles/kitty.conf ~/.config/kitty/kitty.conf
echo "✓ Restored kitty config"

# Restore .tmux.conf
cp ~/dotfiles/.tmux.conf ~/.tmux.conf
echo "✓ Restored .tmux.conf"

# Restore .ssh config
mkdir -p ~/.ssh
cp ~/dotfiles/.ssh/config ~/.ssh/config
chmod 600 ~/.ssh/config
echo "✓ Restored SSH config"

# in new devices, may need to chmod 600 sshPub_key to access the repo.

# Load GNOME shell extensions settings
dconf load /org/gnome/shell/extensions/ < ~/dotfiles/gnomeExtensionSettings.dconf
echo "✓ Loaded GNOME shell extensions settings"

# Load GNOME WM keybindings
dconf load /org/gnome/desktop/wm/keybindings/ < ~/dotfiles/window-nav-shortcuts-settings.dconf
echo "✓ Loaded GNOME WM keybindings"

# Optional: Reload GNOME shell (not available on Wayland), logout and login recommended to see all changes

echo "✅ All configurations restored."
