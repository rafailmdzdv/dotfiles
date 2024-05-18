require("lualine").setup({
  options = {
    component_separators = {right = "|"},
    icons_enabled = false,
  },
  sections = {
    lualine_a = {{"mode", separator = { right = nil }, fmt = function (mode)
      return string.sub(mode, 0, 1)
    end}},
    lualine_b = {
      {"diff", separator = { right = nil }}
    },
    lualine_c = {
      {
        "filename",
        path = 1,
      }
    },
    lualine_x = {
      {"encoding"}, {"fileformat"}
    },
    lualine_y = {},
    lualine_z = {
      {"location", separator = { left = nil }, padding = { left = nil, right = nil }}
    }
  }
})
