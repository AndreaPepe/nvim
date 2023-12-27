local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()

cmp.setup({
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args)
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }
    }, {
        { name = 'buffer' }
    }),
})




local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({ capabilities = capabilities })
lspconfig.clangd.setup({ capabilities = capabilities })
lspconfig.pyright.setup({ capabilities = capabilities })
