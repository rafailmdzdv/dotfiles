return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
        ██████   █████  ███████  █████  ██ ██      
        ██   ██ ██   ██ ██      ██   ██ ██ ██      
        ██████  ███████ █████   ███████ ██ ██      
        ██   ██ ██   ██ ██      ██   ██ ██ ██      
        ██   ██ ██   ██ ██      ██   ██ ██ ███████ 
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"

      opts.con***REMOVED***g.header = vim.split(logo, "\n")
    end,
  },
}
