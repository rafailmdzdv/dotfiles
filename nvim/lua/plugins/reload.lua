function ReloadCon***REMOVED***g ()
    for name, _ in pairs(package.loaded) do
      if name:match("^plugins") then
        package.loaded[name] = nil
      end
    end
    do***REMOVED***le(vim.env.MYVIMRC)
    vim.notify("Reloaded con***REMOVED***guration!")
end

vim.api.nvim_create_user_command("ReloadCon***REMOVED***g", ReloadCon***REMOVED***g, { force = true })
