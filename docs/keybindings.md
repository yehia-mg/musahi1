# Keybindings

`$mainMod` = `SUPER`

## Apps

| Keybind | Action |
|---|---|
| `SUPER + Enter` | Open Kitty |
| `SUPER + D` | Rofi — app launcher (drun) |
| `SUPER + Tab` | Rofi — window switcher |
| `SUPER + E` | Open Dolphin |
| `SUPER + SHIFT + V` | Clipboard history (cliphist + Rofi) |

## Window management

| Keybind | Action |
|---|---|
| `SUPER + Q` | Close active window |
| `SUPER + SHIFT + Q` | Exit Hyprland |
| `SUPER + V` | Toggle floating |
| `SUPER + Middle-click` | Toggle floating (mouse only, no keyboard needed) |
| `SUPER + F` | Fullscreen |
| `SUPER + P` | Pseudotile |
| `SUPER + J` | Toggle split direction |
| `SUPER + R` then arrows, `Esc` to exit | Resize mode |
| `SUPER + drag` (left mouse button) | Move window |
| `SUPER + drag` (right mouse button) | Resize window |
| Hover over window edge (no modifier) | Resize via border drag |

Any window toggled to floating gets a default centered size (55% x 55% of
the screen) — see `windowrulev2` in `config/hypr/conf.d/windowrules.conf`.

## Focus & movement

| Keybind | Action |
|---|---|
| `SUPER + ←/→/↑/↓` | Move focus |
| `SUPER + SHIFT + ←/→/↑/↓` | Move window |

## Workspaces

| Keybind | Action |
|---|---|
| `SUPER + [1-9,0]` | Switch to workspace 1–10 |
| `SUPER + SHIFT + [1-9,0]` | Move window to workspace 1–10 |
| `SUPER + scroll` | Cycle workspaces |

## Screenshots

| Keybind | Action |
|---|---|
| `Print` | Region screenshot (interactive, opens in Swappy) |
| `SHIFT + Print` | Full screen screenshot (opens in Swappy) |

## Lock / notifications

| Keybind | Action |
|---|---|
| `SUPER + L` | Lock screen (Hyprlock) |
| `SUPER + N` | Toggle notification center (SwayNC) |

## Media / system

| Keybind | Action |
|---|---|
| Volume up/down/mute | Media keys |
| Play/pause/next/prev | Media keys (via playerctl) |
| Brightness up/down | Media keys |
