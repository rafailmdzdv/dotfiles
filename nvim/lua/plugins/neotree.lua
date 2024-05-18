require("neo-tree").setup({
  window = {
    width = 30,
    mappings = {
      ["q"] = "close_window",
      ["<S-e>"] = "close_window"
    }
  }
})
vim.keymap.set("n", "<S-e>", function () vim.cmd("Neotree") end)
