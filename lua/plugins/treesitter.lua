return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
            ensure_installed = {
                "c",
                "lua",
                "vim",
                "vimdoc",
                "markdown",
                "javascript",
                "typescript",
                "python",
                "nix",
                "rust",
                "html",
            },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = true },
        },
    },

    {
        "windwp/nvim-ts-autotag",
        opts = {
            opts = {
                enable_close = true,
                enable_rename = true,
                enable_close_on_slash = true,
            },
        },
    },
}
