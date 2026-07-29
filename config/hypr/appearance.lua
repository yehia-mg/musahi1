local hl = require("hyprland")

local hl = require("hyprland")
local vars = require("variables")
local theme = vars.theme

hl.config({
    general = {
        gaps_in = theme.gaps.inner,
        gaps_out = theme.gaps.outer,

        border_size = theme.border_size,

        ["col.active_border"] =
            string.format("rgba(%sFF)", theme.colors.accent:gsub("#", "")),

        ["col.inactive_border"] =
            string.format("rgba(%s66)", theme.colors.surface:gsub("#", "")),

        resize_on_border = true,
    },

    decoration = {
        rounding = theme.border_radius,

        active_opacity = theme.opacity.active,
        inactive_opacity = theme.opacity.inactive,

        shadow = {
            enabled = true,
            range = 18,
            render_power = 3,
        },

        blur = {
            enabled = theme.blur.enabled,
            size = theme.blur.size,
            passes = theme.blur.passes,
            noise = 0.015,
            contrast = 1.05,
            brightness = 1.0,
        },
    },
})
