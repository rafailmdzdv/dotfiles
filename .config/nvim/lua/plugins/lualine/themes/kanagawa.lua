local kanagawa_colors = {
    black = "#1F1F28",
    red = "#E46A78",
    green = "#98BC6D",
    yellow = "#E5C283",
    blue = "#7EB3C9",
    violet = "#957FB8",
    cyan = "#7EB3C9",
    white = "#DDD8BB",

    black2 = "#3C3C51",
}

local function get_theme()
    return {
        normal = {
            a = { fg = kanagawa_colors.blue, bg = kanagawa_colors.black2 },
            b = { fg = kanagawa_colors.white, bg = kanagawa_colors.black2 },
            c = { fg = kanagawa_colors.white, bg = kanagawa_colors.black2 },
        },

        insert = { a = { fg = kanagawa_colors.red, bg = kanagawa_colors.black2 } },
        visual = { a = { fg = kanagawa_colors.violet, bg = kanagawa_colors.black2 } },
        replace = { a = { fg = kanagawa_colors.yellow, bg = kanagawa_colors.black2 } },

        inactive = {
            a = { fg = kanagawa_colors.white, bg = kanagawa_colors.black2 },
            b = { fg = kanagawa_colors.white, bg = kanagawa_colors.black2 },
            c = { fg = kanagawa_colors.white, bg = kanagawa_colors.black2 },
        },
    }
end

return {
    theme = get_theme(),
}
