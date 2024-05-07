local map = vim.keymap.set
local function on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)


  map("n", "<S-e>", api.tree.toggle, opts("Toggle"))
end


require("nvim-tree").setup({
  on_attach = on_attach
})
