require("neodev").setup()
local lspconfig = require("lspconfig")

local opts = { noremap = true, silent = true }
local on_attach = function()
    vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)
    vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
    vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)
    vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)
    vim.keymap.set("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
    vim.keymap.set("n", "<leader>D", "<cmd>Telescope lsp_type_definitions<CR>", opts)
    vim.keymap.set("n", "<leader>rn", require("renamer").rename, opts)
    vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
    vim.keymap.set("n", "<leader>lr", "<cmd>LspRestart<CR>", opts)
    vim.keymap.set("n", "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
    vim.keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next({ float = false })<CR>", opts)
    vim.keymap.set("n", "<leader>dN", "<cmd>lua vim.diagnostic.goto_prev({ float = false })<CR>", opts)
end

local servers = { "jedi_language_server", "tsserver", "clangd" }
local lspcmp = require("cmp_nvim_lsp")
local capabilities = lspcmp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true
for _, server in ipairs(servers) do
  lspconfig[server].setup({
    capabilities = capabilities,
    on_attach = on_attach,
  })
end

-- Lua
lspconfig.lua_ls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
      Lua = {
          diagnostics = { globals = { "vim" } },
          hint = { enable = true },
      },
  },
})

-- Frontend
lspconfig.html.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig.emmet_ls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
