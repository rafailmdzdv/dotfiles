local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<tab>"] = cmp.mapping.select_next_item(),
    ["<s-tab>"] = cmp.mapping.select_prev_item(),
    ["<enter>"] = cmp.mapping.con***REMOVED***rm({ select = true }),
  }),
  sources = cmp.con***REMOVED***g.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "nvim_lua" },
  }, {
    { name = "buffer" },
    { name = "path" },
  }),

})
