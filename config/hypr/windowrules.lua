local hl = require("hyprland")

hl.config({
    windowrulev2 = {
        "float,class:^(pavucontrol)$",
        "float,class:^(nm-connection-editor)$",
        "float,class:^(org.gnome.Calculator)$",

        "center,class:^(pavucontrol)$",
        "center,class:^(nm-connection-editor)$",
        "center,class:^(org.gnome.Calculator)$",
    }
})
