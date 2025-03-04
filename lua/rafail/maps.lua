local m = {
    n = "n",
    i = "i",
}
local set_map = vim.keymap.set

set_map(m.n, "<leader>pf", vim.cmd.Ex)

set_map(m.n, "<leader>q", vim.cmd.bd)

set_map(m.i, "jk", "<ESC>")
