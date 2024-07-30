return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.diagnostics.virtual_text.prefix = "👺"
      opts.servers.emmet_ls = {}
    end,
  },
}
