#!/usr/bin/env bash

# 1. 检查依赖
if ! command -v jq &> /dev/null; then
    notify-send "Error" "jq is missing"
    exit 1
fi

# 2. 获取并格式化窗口列表
# 逻辑解释：
# hyprctl clients -j : 获取所有客户端的 JSON 数据
# jq ... : 
#   select(.hidden==false) : 过滤掉隐藏的窗口
#   输出格式 : "地址: [工作区ID] 类名 - 标题"
#   icon : 尝试利用类名作为图标查找依据 (fuzzel 需要配置才能显示图标，这里主要为了文本搜索)

CLIENTS=$(hyprctl clients -j | jq -r '
  .[] | 
  select(.hidden==false) | 
  "\(.address): [ws:\(.workspace.id)] \(.class) - \(.title)"
')


# 3. 启动 Fuzzel 并获取选择
# --dmenu : 启用 dmenu 模式 (接收 stdin)
# --prompt : 设置提示符
# --width : 宽度
# --lines : 显示多少行
SELECTED=$(echo "$CLIENTS" | fuzzel \
    --dmenu \
    --prompt="  Switch: " \
    --width=60 \
    --lines=10 \
    --anchor=center)

# 4. 提取窗口地址 (Address)
# 我们的格式是 "0x1234abcd: ...", 所以取第一个字段，以冒号分隔
ADDR=$(echo "$SELECTED" | cut -d: -f1)

# 5. 切换窗口
if [ -n "$ADDR" ]; then
    hyprctl dispatch focuswindow address:"$ADDR"
fi
