#!/bin/bash
echo "Deploying my-ubuntu-dotfiles..."

# Copy binary scripts
mkdir -p ~/.local/bin
cp bin/* ~/.local/bin/
chmod +x ~/.local/bin/*

# Apply keybindings
./config/gsettings-shortcuts.sh

echo "Done! Environment setup completed successfully."
