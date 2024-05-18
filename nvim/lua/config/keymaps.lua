local map = vim.keymap.set
local opts = { noremap = true, silent = true }

local normal = "n"
local visual = "v"
local insert = "i"

vim.g.mapleader = " "

-- Split window
map(normal, "sv", function () vim.cmd("vsplit") end, opts)
map(normal, "sg", function () vim.cmd("split") end, opts)

map(normal, "<S-l>", function () vim.cmd("bnext") end, opts)
map(normal, "<S-h>", function () vim.cmd("bprev") end, opts)

-- Indent
map(visual, "<", "<gv")
map(visual, ">", ">gv")

-- Buffer
map(normal, "<leader>q", function () vim.cmd("bd") end, opts)

-- Markdown
map(normal, "<leader>mp", function() vim.cmd("MarkdownPreview") end, opts)

map(insert, "jk", "<esc>", opts)
