local options = {
    tabstop = 2,
    shiftwidth = 2,
    softtabstop = 2,
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

vim.cmd("set nowrap")
