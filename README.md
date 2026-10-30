# My Ubuntu Dotfiles

Tập hợp các script cá nhân hóa và tự động hóa môi trường làm việc trên **Ubuntu (X11/Xorg)**.

## 🚀 Tính năng chính

- **Super + Tab Workspace Toggle:** Chuyển đổi nhanh qua lại giữa 2 không gian làm việc (workspace) bằng script `toggle-workspace.sh` (sử dụng `xdotool` & `wmctrl`).
- **Tối giản cấu hình:** Giữ nguyên toàn bộ phím tắt mặc định hệ thống của Ubuntu, chỉ ghi đè duy nhất tổ hợp phím `Super + Tab`.

## 📦 Yêu cầu hệ thống

Hệ thống cần chạy trên môi trường **X11 / Xorg** và đã cài đặt các công cụ sau:

```bash
sudo apt update
sudo apt install -y xdotool wmctrl
```

## 🛠 Hướng dẫn cài đặt & Triển khai

1. **Clone kho lưu trữ về máy:**
   ```bash
   git clone https://github.com/vanhoacdt/my-ubuntu-dotfiles.git ~/my-ubuntu-dotfiles
   cd ~/my-ubuntu-dotfiles
   ```

2. **Cấp quyền và chạy script triển khai (`install.sh`):**
   ```bash
   chmod +x install.sh
   ./install.sh
   ```

3. *(Hoặc cài đặt thủ công)*:
   ```bash
   # Copy script vào thư mục binary cá nhân
   mkdir -p ~/.local/bin
   cp bin/toggle-workspace.sh ~/.local/bin/
   chmod +x ~/.local/bin/toggle-workspace.sh

   # Gán phím tắt Super + Tab
   ./config/gsettings-shortcuts.sh
   ```

## 📂 Cấu trúc thư mục

```text
my-ubuntu-dotfiles/
├── bin/
│   └── toggle-workspace.sh     # Script chuyển đổi workspace nhanh
├── config/
│   └── gsettings-shortcuts.sh  # Cấu hình phím tắt gsettings (Super+Tab)
├── install.sh                  # Script cài đặt tự động
└── README.md
```