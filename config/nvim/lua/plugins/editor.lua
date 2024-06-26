return {
  {
    "folke/flash.nvim",
    enabled = false,
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Live Grep" },
    },
  },
  { "wakatime/vim-wakatime", lazy = false },
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
      vim.cmd("TransparentEnable")
    end,
  },
}
