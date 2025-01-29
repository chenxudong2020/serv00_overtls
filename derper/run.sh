#!/bin/bash

# 定义要检查的进程名和启动命令
process_derper="derper"
cmd_derper="/home/druaruef/derper/derper -c /home/druaruef/derper/derper.conf --hostname="127.0.0.1" --certmode=manual --certdir="/home/druaruef/derper/certs/" --stun="true" --a=":18889" -stun-port="34788" --http-port="-1" --verify-clients="false" > /dev/null 2>&1 &"


# 检查并启动 derper 进程
if ! pgrep -x "$process_derper" > /dev/null; then
    echo "Starting $process_derper..."
    nohup $cmd_derper
else
    echo "$process_derper is already running."
fi
 