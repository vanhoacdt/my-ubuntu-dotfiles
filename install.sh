#!/bin/bash

echo "🚀 Bắt đầu thiết lập hệ thống..."

# 1. Cài đặt các công cụ phụ thuộc
sudo apt update
sudo apt install -y xdotool wmctrl

# 2. Tạo thư mục bin cá nhân và copy script
mkdir -p ~/.local/bin
cp bin/toggle-workspace.sh ~/.local/bin/toggle-workspace.sh
chmod +x ~/.local/bin/toggle-workspace.sh

# 3. Chạy cấu hình gsettings
chmod +x config/gsettings-shortcuts.sh
./config/gsettings-shortcuts.sh

echo "✅ Đã cài đặt xong! Vui lòng đảm bảo bạn đang ở phiên đăng nhập Ubuntu on Xorg (X11)."
