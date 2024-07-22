vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python", "toml", "cpp", "c" },
  callback = function()
    vim.b.autoformat = false
  end,
})
