#!/bin/sh
pkill -kill -u druaruef
/usr/home/druaruef/caddy/overtls/overtls-bin -r server -d -c /usr/home/druaruef/caddy/overtls/config.json
/usr/home/druaruef/caddy/caddy start --config /usr/home/druaruef/caddy/Caddyfile