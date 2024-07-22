vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python", "toml", "cpp", "c" },
  callback = function()
    vim.b.autoformat = false
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "cpp", "c" },
  callback = function()
    vim.o.shiftwidth = 2
  end,
})
