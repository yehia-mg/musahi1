-- musahi1 Theme Variables

local M = {}

M.theme = {
    name = "Vagabond",

    colors = {
        background = "#101511",
        surface    = "#1C2A1E",
        primary    = "#4E6B47",
        secondary  = "#7D8C69",
        accent     = "#A8B58A",
        text       = "#F2EAD3",
        muted      = "#C7BEA7",
    },

    border_radius = 14,
    border_size   = 2,

    gaps = {
        inner = 8,
        outer = 16,
    },

    blur = {
        enabled = true,
        size = 8,
        passes = 3,
    },

    opacity = {
        active = 0.96,
        inactive = 0.90,
    },
}

return M
