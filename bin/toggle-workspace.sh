#!/bin/bash
STATE_FILE="/tmp/gnome_workspace_history"

# Lấy số thứ tự workspace hiện tại (tính từ 0) một cách chính xác
CURRENT=$(xdotool get_desktop)

if [ ! -f "$STATE_FILE" ]; then
    echo "0" > "$STATE_FILE"
    LAST=0
else
    LAST=$(cat "$STATE_FILE")
fi

# Nếu workspace hiện tại khác với workspace trước đó đã lưu
if [ "$CURRENT" -ne "$LAST" ]; then
    echo "$CURRENT" > "$STATE_FILE"
    wmctrl -s "$LAST"
else
    # Nếu đang đứng ở workspace cũ, tiến hành đổi sang workspace kế tiếp (hoặc 0)
    TOTAL_WS=$(wmctrl -d | wc -l)
    TARGET=$(( (CURRENT + 1) % TOTAL_WS ))
    echo "$CURRENT" > "$STATE_FILE"
    wmctrl -s "$TARGET"
fi