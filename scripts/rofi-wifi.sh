#!/usr/bin/env bash
# Simple Wi-Fi picker using nmcli + rofi, styled with our existing rofi theme.

networks=$(nmcli -t -f SSID,SIGNAL,SECURITY device wifi list --rescan yes | sort -t: -k2 -rn | awk -F: '!seen[$1]++')

selected=$(echo "$networks" | awk -F: '{printf "%-30s %s%%\n", $1, $2}' | rofi -dmenu -p "Wi-Fi" -theme ~/.config/rofi/theme.rasi)

ssid=$(echo "$selected" | awk '{print $1}')

[[ -z "$ssid" ]] && exit 0

if nmcli -t -f NAME connection show | grep -qx "$ssid"; then
    nmcli connection up id "$ssid"
else
    password=$(rofi -dmenu -password -p "Password for $ssid" -theme ~/.config/rofi/theme.rasi)
    nmcli device wifi connect "$ssid" password "$password"
fi
