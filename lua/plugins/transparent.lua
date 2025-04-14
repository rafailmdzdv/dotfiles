return {
    "xiyaowong/transparent.nvim",
    config = function()
        require("transparent").setup()
        vim.cmd.TransparentEnable()
    end,
}
