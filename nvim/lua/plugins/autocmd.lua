local two_tabable = {
  "lua",
  "javascript",
  "typescript",
  "javascriptreact",
  "typescriptreact",
  "html",
  "css",
  "json",
}

for _, pattern in ipairs(two_tabable) do
  vim.api.nvim_create_autocmd("FileType", {
    pattern = pattern,
    callback = function(_)
        vim.opt.shiftwidth = 2
        vim.opt.tabstop = 2
        vim.opt.softtabstop = 2
    end,
  })
end
