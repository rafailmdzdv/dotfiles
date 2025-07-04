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
}

for key, value in pairs(options) do
    vim.o[key] = value
end
