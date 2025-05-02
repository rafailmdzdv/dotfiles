return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        init = function()
            local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
            parser_config.org = {
                install_info = {
                    url = "https://github.com/milisims/tree-sitter-org",
                    revision = "main",
                    files = { "src/parser.c", "src/scanner.c" },
                },
                filetype = "org",
            }
            local opts = {
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
            }
            require("nvim-treesitter.configs").setup(opts)
        end,
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
