return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      local formatters_by_ft = {
        lua = { "stylua" },
        sh = { "shfmt" },
      }
      opts.formatters_by_ft = formatters_by_ft
    end,
  },
}
