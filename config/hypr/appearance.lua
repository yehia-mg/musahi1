local hl = require("hyprland")

hl.config({
    general = {
        gaps_in = 6,
        gaps_out = 14,
        border_size = 2,

        ["col.active_border"] = "rgba(88B06Aff)",
        ["col.inactive_border"] = "rgba(3B4A3Daa)",

        resize_on_border = true,
    },

    decoration = {
        rounding = 14,

        active_opacity = 1.0,
        inactive_opacity = 0.93,

        shadow = {
            enabled = true,
            range = 20,
            render_power = 3,
        },

        blur = {
            enabled = true,
            size = 8,
            passes = 3,
            noise = 0.02,
        },
    },
})
