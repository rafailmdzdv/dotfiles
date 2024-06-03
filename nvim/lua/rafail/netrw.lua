vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function ()
    local create_file = function ()
      local dir = vim.fn.expand("%:p")
      local filename = vim.fn.input("Enter file name: ")
      if filename:len() == 0 then
        return
      end
      local file = io.open(dir .. filename)
      if file == nil then
        io.open(dir .. filename, "w"):write()
        vim.cmd.edit()
      else
        vim.notify("File " .. filename .. " already exists!")
      end
    end
    vim.keymap.set("n", "%", create_file, { buffer = true })
  end
})
