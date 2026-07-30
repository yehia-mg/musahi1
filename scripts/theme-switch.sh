#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
THEME="${1:-}"
VALID_THEMES=(vagabond lain evangelion nature)

if [[ -z "$THEME" ]] || [[ ! " ${VALID_THEMES[*]} " =~ " ${THEME} " ]]; then
    echo "Usage: $0 <vagabond|lain|evangelion|nature>"
    exit 1
fi

THEME_DIR="$REPO_DIR/themes/$THEME"

echo "==> Switching to theme: $THEME"

# Hyprland colors
cp "$THEME_DIR/colors.conf" ~/.config/hypr/conf.d/colors.conf

# Waybar
cp "$THEME_DIR/waybar-colors.css" ~/.config/waybar/colors.css

# Rofi
cp "$THEME_DIR/rofi-colors.rasi" ~/.config/rofi/colors.rasi

# Kitty
cp "$THEME_DIR/kitty-colors.conf" ~/.config/kitty/colors.conf

# Wallpaper — use the first image found in the theme's wallpaper folder
WALL_DIR="$THEME_DIR/wallpapers"
WALLPAPER=$(find "$WALL_DIR" -maxdepth 1 -type f \( -iname '*.png' -o -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.webp' \) | head -n 1 || true)

if [[ -n "$WALLPAPER" ]]; then
    cat > ~/.config/hypr/hyprpaper.conf << EOL
preload = $WALLPAPER
wallpaper = , $WALLPAPER
EOL
    echo "==> Wallpaper set: $WALLPAPER"
else
    echo "==> No wallpaper found in $WALL_DIR — add an image there and rerun to set it."
fi

echo "==> Reloading components..."
hyprctl reload

killall waybar 2>/dev/null || true
waybar & disown

killall swaync 2>/dev/null || true
swaync & disown

if [[ -n "$WALLPAPER" ]]; then
    killall hyprpaper 2>/dev/null || true
    hyprpaper & disown
fi

echo "==> Done. Note: already-open Kitty windows need Ctrl+Shift+F5 to pick up new colors."
echo "==> Theme '$THEME' applied."
