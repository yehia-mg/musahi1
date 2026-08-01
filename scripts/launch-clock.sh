#!/usr/bin/env bash
exec kitty --class clock-widget \
    -o background_opacity=0 \
    -o cursor_shape=block \
    -o cursor_blink_interval=0 \
    -e bash -c 'while true; do clear; figlet -f big "$(date +%H:%M)"; echo; date "+%A، %d %B"; sleep 1; done'
