require("lualine").setup({
  sections = {
    lualine_a = {{"mode"}},
    lualine_c = {
      {
        "filename",
        path = 1
      }
    }
  }
})
