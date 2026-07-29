local hl = require("hyprland")

hl.config({
    animations = {
        enabled = true,

        bezier = {
            "musahi,0.05,0.9,0.1,1.05",
        },

        animation = {
            "windows,1,6,musahi,popin",
            "windowsOut,1,6,musahi,popin",
            "fade,1,6,musahi",
            "border,1,8,musahi",
            "workspaces,1,7,musahi,slide",
        },
    },
})
