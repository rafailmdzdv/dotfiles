local options = {
    tabstop = 4,
    shiftwidth = 4,
    softtabstop = 4,
    expandtab = true,
    mouse = "",
    number = true,
    relativenumber = true,
    swapfile = false,
    autoindent = true,
    smartindent = true,
    ignorecase = true,
    colorcolumn = "80",
}

for key, value in pairs(options) do
    vim.o[key] = value
end

local go_bin = vim.fn.expand("~/go/bin")
if vim.fn.isdirectory(go_bin) == 1 and not string.find(vim.env.PATH, go_bin, 1, true) then
    vim.env.PATH = go_bin .. ":" .. vim.env.PATH
end
