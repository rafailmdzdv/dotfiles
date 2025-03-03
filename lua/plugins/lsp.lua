local function lsp_mappings_set()
    local map = vim.keymap.set
    local normal = "n"
    map(normal, "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
    map(normal, "gd", "<cmd>Telescope lsp_definitions<CR>")
    map(normal, "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
    map(normal, "gi", "<cmd>Telescope lsp_implementations<CR>")
    map(normal, "gr", "<cmd>Telescope lsp_references<CR>")
    map(normal, "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
    map(normal, "<leader>D", "<cmd>Telescope lsp_type_definitions<CR>")
    map(normal, "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
    map(normal, "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
    map(normal, "<leader>lr", "<cmd>LspRestart<CR>")
    map(normal, "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>")
    map(normal, "<leader>dn", "<cmd>lua vim.diagnostic.goto_next({ float = false })<CR>")
    map(normal, "<leader>dN", "<cmd>lua vim.diagnostic.goto_prev({ float = false })<CR>")
end

return {
    {
        "neovim/nvim-lspconfig",
        dependencies = "hrsh7th/cmp-nvim-lsp",
        config = function()
            lsp_mappings_set()
            local lspconfig = require("lspconfig")
            local capabilities =
                require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
            local lsprotocols = {
                "pyright",
                "rust_analyzer",
                "tailwindcss",
                "ts_ls",
                "nixd",
            }
            for _, lsp in ipairs(lsprotocols) do
                lspconfig[lsp].setup({
                    capabilities = capabilities,
                })
            end

            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            })
        end,
    },

    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/nvim-cmp",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
        },
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                }, {
                    { name = "buffer" },
                }),
            })
        end,
    },
}
