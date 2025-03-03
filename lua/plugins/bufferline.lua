return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local normal = "n"
        local map = vim.keymap.set
        map(normal, "L", vim.cmd.bn)
        map(normal, "H", vim.cmd.bp)
        local bufferline = require("bufferline")
        bufferline.setup({
            options = {
                buffer_close_icon = "",
                style_preset = bufferline.style_preset.minimal,
            },
        })
    end,
}
