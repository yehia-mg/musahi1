-- Appearance settings

local hl = require("hyprland")

hl.config({
    general = {
        gaps_in = 8,
        gaps_out = 16,

        border_size = 2,

        ["col.active_border"] = "rgba(7D8C69ff)",
        ["col.inactive_border"] = "rgba(2D443088)",

        resize_on_border = true,
    },

    decoration = {
        rounding = 14,

        blur = {
            enabled = true,
            size = 8,
            passes = 3,
        },

        shadow = {
            enabled = true,
        },
    },
})
