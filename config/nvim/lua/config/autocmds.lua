vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python", "toml" },
  callback = function()
    vim.b.autoformat = false
  end,
})
