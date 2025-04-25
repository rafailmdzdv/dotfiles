return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = true,
    keys = function()
        local builtin = require("telescope.builtin")
        return {
            { "<leader>ff", builtin.find_files },
            { "<leader>fs", builtin.grep_string },
            { "<leader>fg", builtin.live_grep },
            { "<leader>gf", builtin.git_files },
        }
    end,
}
