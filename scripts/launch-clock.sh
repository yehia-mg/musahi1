#!/usr/bin/env bash
exec kitty --class figlet-clock \
    -o background_opacity=0.85 \
    -e bash -c 'while true; do clear; figlet -f big "$(date +%H:%M)"; echo; date "+%A، %d %B"; sleep 1; done'
