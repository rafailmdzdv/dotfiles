local m = {
    n = "n",
    i = "i",
    v = "v",
}
local set_map = vim.keymap.set

-- Normal
-- set_map(m.n, "<leader>pf", vim.cmd.Ex)

set_map(m.n, "<leader>q", vim.cmd.bd)

-- Insert
set_map(m.i, "jk", "<ESC>")

-- Visual
set_map(m.v, ">", ">gv")
set_map(m.v, "<", "<gv")
