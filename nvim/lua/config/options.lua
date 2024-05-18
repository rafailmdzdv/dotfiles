vim.opt.cmdheight = 0
vim.opt.termguicolors = true
require("monokai-pro").setup({filter="classic"})
vim.cmd("colorscheme monokai-pro")
vim.o.cursorline = true
vim.cmd[[hi CursorLineNr guibg=black guifg=white]]

vim.opt.mouse = ""
vim.opt.number = true
vim.opt.relativenumber = false

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.autoread = true

vim.opt.ignorecase = false

local config_dir = vim.fn.expand("~/.config/nvim")
local undodir = config_dir .. "/.undodir/"
os.execute("mkdir -p " .. undodir)
vim.o.swapfile = true
vim.o.undofile = true
vim.o.undodir = undodir
