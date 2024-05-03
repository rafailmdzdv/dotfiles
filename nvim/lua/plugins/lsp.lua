return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
        "jedi-language-server",
        "typescript-language-server",
        "jinja-lsp",
        "bash-language-server",
        "tailwindcss-language-server",
        "cmake-language-server",
        "gopls",
      },
    },
  },
}
