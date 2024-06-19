function ReloadConfig ()
    for name, _ in pairs(package.loaded) do
      if name:match("^plugins") then
        package.loaded[name] = nil
      end
    end
    dofile(vim.env.MYVIMRC)
    vim.notify("Reloaded configuration!")
end

vim.api.nvim_create_user_command("ReloadConfig", ReloadConfig, { force = true })
