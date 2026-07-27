local hl = require("hyprland")

hl.config({
    ["exec-once"] = {
        "waybar",
        "swww-daemon",
        "nm-applet",
        "swaync",
    }
})
