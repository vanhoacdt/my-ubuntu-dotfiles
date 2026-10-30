#!/bin/bash

# --- Cấu hình Dock ---
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash true
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED'
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.3

# --- Cấu hình Phím tắt tùy chỉnh Super+Tab ---
gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "[
    '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/'
]"

# Custom 0: Toggle Workspace (Super + Tab)
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Toggle Workspace'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "$HOME/.local/bin/toggle-workspace.sh"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Super>Tab'

# --- Phím tắt phong cách Windows 11 ---
# Super + E: Mở Files / Home
gsettings set org.gnome.settings-daemon.plugins.media-keys home "['<Super>e']"

# Super + D: Toggle Show Desktop
gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>d']"

# Super + L: Lock Screen
gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "['<Super>l']"

# Super + I: Open Settings
gsettings set org.gnome.settings-daemon.plugins.media-keys control-center "['<Super>i']"
