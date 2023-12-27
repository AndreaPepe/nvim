return {
    -- Mason
    {
        -- mason: LSP manager
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        -- mason-lspconfig: bridge plugin that closes the gap between the mason
        -- and the lspconfig plugin
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "clangd",
                    "lua_ls",
                    "pyright"
                }
            })
        end
    },
    -- LSP
    { "VonHeikemen/lsp-zero.nvim", branch = "v3.x"},
    {
        -- nvim-lspconfig: make nvim communicate with LSP servers (processes)
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.clangd.setup({})
            lspconfig.pyright.setup({})

            -- keymaps
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
            vim.keymap.set({'n', 'v'}, '<leader>ca',
                vim.lsp.buf.code_action, {})
        end
    },
    -- Completion
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/nvim-cmp" },
    { "L3MON4D3/LuaSnip" },
    { "saadparwaiz1/cmp_luasnip" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    { "hrsh7th/cmp-nvim-lua" },
    -- Formatting and Linting
    {"folke/neodev.nvim", opts = {} },
}
