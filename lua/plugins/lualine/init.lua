return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "SmiteshP/nvim-navic",
    },
    config = function()
        local lualine = require("lualine")
        local navic = require("nvim-navic")
        lualine.setup({
            options = {
                icons_enabled = true,
                theme = require("plugins.lualine.themes.kanagawa").theme,
                component_separators = { left = "", right = "" },
                section_separators = { left = "", right = "" },
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                always_show_tabline = true,
                globalstatus = false,
                refresh = {
                    statusline = 100,
                    tabline = 100,
                    winbar = 100,
                },
            },
            sections = {
                lualine_a = {
                    {
                        "mode",
                        separator = { left = "", right = "" },
                        fmt = function(str)
                            return str:lower()
                        end,
                    },
                },
                lualine_b = {},
                lualine_c = { "filename" },
                lualine_x = {},
                lualine_y = { "progress" },
                lualine_z = { "location" },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { "filename" },
                lualine_x = { "location" },
                lualine_y = {},
                lualine_z = {},
            },
            tabline = {},
            winbar = {
                lualine_c = {
                    {
                        function()
                            return navic.get_location()
                        end,
                        cond = function()
                            return navic.is_available()
                        end,
                    },
                },
            },
            inactive_winbar = {},
            extensions = {},
        })
    end,
}
