local hl = require("hyprland")

hl.config({
    env = {
        "XCURSOR_SIZE,24",
        "QT_QPA_PLATFORM,wayland",
        "QT_QPA_PLATFORMTHEME,qt6ct",
        "GDK_BACKEND,wayland,x11",
        "SDL_VIDEODRIVER,wayland",
        "CLUTTER_BACKEND,wayland",
    }
})
