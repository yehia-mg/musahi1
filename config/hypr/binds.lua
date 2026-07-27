local hl = require("hyprland")

hl.config({
    ["$mainMod"] = "SUPER",

    bind = {
        "$mainMod, RETURN, exec, kitty",
        "$mainMod, Q, killactive",
        "$mainMod, E, exec, dolphin",
        "$mainMod, R, exec, rofi -show drun",
        "$mainMod, F, fullscreen",
        "$mainMod, L, exec, hyprlock",

        "$mainMod, 1, workspace, 1",
        "$mainMod, 2, workspace, 2",
        "$mainMod, 3, workspace, 3",
        "$mainMod, 4, workspace, 4",
        "$mainMod, 5, workspace, 5",
    },
})
