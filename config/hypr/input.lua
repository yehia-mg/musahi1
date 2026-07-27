local hl = require("hyprland")

hl.config({
    input = {
        kb_layout = "us,ara",
        kb_options = "grp:alt_shift_toggle",

        follow_mouse = 1,

        touchpad = {
            natural_scroll = true,
            tap_to_click = true,
        },

        sensitivity = 0,
    },
})
