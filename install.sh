#!/usr/bin/env bash
set -euo pipefail

echo "==> musahi1 — package installer (Fedora)"
echo

echo "==> Installing packages from official Fedora repositories..."
sudo dnf install -y \
    hyprland \
    hyprpaper \
    hyprlock \
    hypridle \
    xdg-desktop-portal-hyprland \
    waybar \
    rofi-wayland \
    kitty \
    swaync \
    dolphin \
    qt6ct \
    kvantum \
    kvantum-qt6 \
    papirus-icon-theme \
    breeze-cursor-theme \
    fastfetch \
    playerctl \
    brightnessctl \
    network-manager-applet \
    pavucontrol \
    grim \
    slurp \
    swappy \
    wl-clipboard \
    cliphist \
    fish

echo
echo "==> Done. Next step: run ./apply.sh to deploy the configs."
