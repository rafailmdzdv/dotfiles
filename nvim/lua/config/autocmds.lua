vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.b.autoformat = false
  end,
})
