require("nvim-treesitter.con***REMOVED***gs").setup({
  ensure_installed = {
    "python",
    "lua",
    "vim",
    "javascript",
    "typescript",
    "bash",
    "toml",
    "html",
    "css",
    "yaml",
    "sql",
  },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
  autotag = {
    enable = true
  }
})
