return {
    "simrat39/symbols-outline.nvim",
    config = function()
        require("symbols-outline").setup()
    end,
    keys = { { "<leader>so", "<cmd>SymbolsOutline<CR>" } },
}
