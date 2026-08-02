#!/usr/bin/env bash
cava -p "$HOME/.config/eww/scripts/cava-raw.conf" | while read -r line; do
    IFS=';' read -ra vals <<< "$line"
    json="["
    for v in "${vals[@]}"; do
        [[ -z "$v" ]] && continue
        json+="$v,"
    done
    json="${json%,}]"
    echo "$json"
done
