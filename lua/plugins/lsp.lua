local function setup_lsp_attach()
    local navic = require("nvim-navic")

    vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true }),
        callback = function(args)
            local bufnr = args.buf
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            if not client then
                return
            end

            vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"

            local map = vim.keymap.set
            local opts = { buffer = bufnr }

            map("n", "gD", vim.lsp.buf.declaration, opts)
            map("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)
            map("n", "K", vim.lsp.buf.hover, opts)
            map("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)
            map("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)
            map("n", "<C-k>", vim.lsp.buf.signature_help, opts)
            map("n", "<leader>D", "<cmd>Telescope lsp_type_definitions<CR>", opts)
            map("n", "<leader>rn", vim.lsp.buf.rename, opts)
            map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
            map("n", "<leader>lr", "<cmd>LspRestart<CR>", opts)
            map("n", "<leader>d", vim.diagnostic.open_float, opts)
            map("n", "<leader>dn", function()
                vim.diagnostic.goto_next({ float = false })
            end, opts)
            map("n", "<leader>dN", function()
                vim.diagnostic.goto_prev({ float = false })
            end, opts)

            if client:supports_method("textDocument/documentSymbol") or client.server_capabilities.documentSymbolProvider then
                navic.attach(client, bufnr)
            end
        end,
    })
end

return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "SmiteshP/nvim-navic",
        },
        config = function()
            setup_lsp_attach()

            local capabilities = vim.tbl_deep_extend(
                "force",
                vim.lsp.protocol.make_client_capabilities(),
                require("cmp_nvim_lsp").default_capabilities()
            )

            local lsprotocols = {
                -- "pyright",
                -- "rust_analyzer",
                "tailwindcss",
                "ts_ls",
                "html",
                "cssls",
            }

            for _, lsp in ipairs(lsprotocols) do
                vim.lsp.config[lsp] = {
                    capabilities = capabilities,
                }
                vim.lsp.enable(lsp)
            end

            local gopls_cmd = { "gopls" }
            local user_gopls = vim.fn.expand("~/go/bin/gopls")
            if vim.fn.executable(user_gopls) == 1 then
                gopls_cmd = { user_gopls }
            end

            vim.lsp.config.gopls = {
                cmd = gopls_cmd,
                capabilities = capabilities,
                settings = {
                    gopls = {
                        analyses = {
                            unusedparams = true,
                            shadow = true,
                        },
                        staticcheck = true,
                        gofumpt = true,
                        completeUnimported = true,
                        usePlaceholders = true,
                    },
                },
            }
            vim.lsp.enable("gopls")

            vim.lsp.config.lua_ls = {
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            }
            vim.lsp.enable("lua_ls")
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
            "rafamadriz/friendly-snippets",
            "saadparwaiz1/cmp_luasnip",
            "onsails/lspkind.nvim",
        },
        opts = function()
            local cmp = require("cmp")
            local lspkind = require("lspkind")
            require("luasnip.loaders.from_vscode").lazy_load()
            local opts = {
                formatting = {
                    fields = { "kind", "abbr", "menu" },
                    format = lspkind.cmp_format({
                        mode = "symbol",
                        maxwidth = 50,
                        ellipsis_char = "...",
                        before = function(entry, vim_item)
                            local symbol = lspkind.symbolic(vim_item.kind)
                            if symbol and symbol ~= "" then
                                vim_item.kind = symbol
                            end
                            pcall(function()
                                vim_item = require("tailwind-tools.cmp").lspkind_format(entry, vim_item)
                            end)
                            return vim_item
                        end,
                    }),
                },
                completion = {
                    completeopt = "menu,menuone,noinsert",
                },
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
            }
            return opts
        end,
    },
}
