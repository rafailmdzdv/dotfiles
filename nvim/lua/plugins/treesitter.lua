return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = {
        "bash",
        "cmake",
        "html",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "jsonc",
        "toml",
        "yaml",
        "lua",
        "markdown",
        "python",
        "rust",
      }
    end,
  },
}
