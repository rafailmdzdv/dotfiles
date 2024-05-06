local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Split window
map("n", "sv", "<cmd>vsplit<CR>", opts)
map("n", "sg", "<cmd>split<CR>", opts)

map("n", "<S-l>", "<cmd>bnext<CR>", opts)
map("n", "<S-h>", "<cmd>bprev<CR>", opts)

-- Indent
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Buffer
map("n", "<leader>q", "<cmd>bd<CR>", opts)

-- Neotree
map("n", "<S-e>", "<cmd>NvimTreeToggle<CR>", opts)
