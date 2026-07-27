#!/usr/bin/env bash

set -e

echo "==> Creating config directories..."

mkdir -p ~/.config/hypr
mkdir -p ~/.config/waybar

echo "==> Backing up old configs..."

if [ -d ~/.config/hypr ]; then
    cp -r ~/.config/hypr ~/.config/hypr.backup.$(date +%Y%m%d-%H%M%S)
fi

if [ -d ~/.config/waybar ]; then
    cp -r ~/.config/waybar ~/.config/waybar.backup.$(date +%Y%m%d-%H%M%S)
fi

echo "==> Installing musahi1 configs..."

cp -r config/hypr/* ~/.config/hypr/
cp -r config/waybar/* ~/.config/waybar/

echo "Done."
echo "Restart Hyprland to apply changes."
