return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local normal = "n"
        local map = vim.keymap.set
        local builtin = require("telescope.builtin")

        map(normal, "<leader>ff", builtin.find_files)
        map(normal, "<leader>fs", builtin.grep_string)
        map(normal, "<leader>gf", builtin.git_files)
    end,
}
