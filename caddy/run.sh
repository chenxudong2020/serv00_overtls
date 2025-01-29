#!/bin/bash

# 定义要检查的进程名和启动命令
process_overtls="overtls-bin"
cmd_overtls="/usr/home/druaruef/caddy/overtls/overtls-bin -r server -d -c /usr/home/druaruef/caddy/overtls/config.json > /dev/null 2>&1 &"

process_caddy="caddy"
cmd_caddy="/usr/home/druaruef/caddy/caddy start --config /usr/home/druaruef/caddy/Caddyfile"

# 检查并启动 overtls 进程
if ! pgrep -x "$process_overtls" > /dev/null; then
    echo "Starting $process_overtls..."
    nohup $cmd_overtls
else
    echo "$process_overtls is already running."
fi

# 检查并启动 caddy 进程
if ! pgrep -x "$process_caddy" > /dev/null; then
    echo "Starting $process_caddy..."
    eval $cmd_caddy
else
    echo "$process_caddy is already running."
fi