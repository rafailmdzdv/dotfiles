require("con***REMOVED***g.options")
require("con***REMOVED***g.keymaps")

require("plugins.plugins")
require("plugins.lsp")
require("plugins.cmp")
require("plugins.autocmd")
require("plugins.null_ls")
require("plugins.treesitter")
require("plugins.telescope")
require("plugins.lsp_signature")
require("plugins.bufferline")
require("plugins.autopairs")
require("plugins.prettier")
require("plugins.comment")
-- require("plugins.lualine")
require("plugins.nvimtree")
require("plugins.reload")
require("plugins.icons")

if vim.g.neovide then

  vim.o.guifont = "Hack Nerd Font:h10"
  vim.o.background = "dark"
  vim.g.neovide_background_color = "#2d3569"

  vim.g.neovide_transparency = 0.85
  vim.g.neovide_window_blurred = true
  vim.g.neovide_cursor_animation_length = 0.01
  vim.g.neovide_cursor_trail_size = 0
  vim.g.neovide_scroll_animation_length = 0.1
end
