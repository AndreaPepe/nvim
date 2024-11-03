local on_attach = require("util.lsp").on_attach
local diagnostics_signs = require("util.lsp").diagnostic_signs

local config_fun = function()
	-- this should be placed before requiring lspconfig
	require("neoconf").setup({})
	local cmp_nvim_lsp = require("cmp_nvim_lsp")
	local lspconfig = require("lspconfig")

	-- attaching diagnostic signs
	for type, icon in pairs(diagnostics_signs) do
		local hl = "DiagnosticSign" .. type
		vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
	end

	local capabilities = cmp_nvim_lsp.default_capabilities()

	-- lua LS
	lspconfig.lua_ls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim" },
				},
				workspace = {
					-- make LS aware of runtime files
					library = {
						[vim.fn.expand("$VIMRUNTIME/lua")] = true,
						[vim.fn.stdpath("config") .. "/lua"] = true,
					},
				},
			},
		},
	})

	-- python
	lspconfig.pyright.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		settings = {
			pyright = {
				disableOrganizeImports = false,
				useLibraryCodeForTypes = true,
				analysis = {
					useLibraryCodeForTypes = true,
					autoSearchPaths = true,
					diagnosticMode = "workspace",
					autoImportCompletions = true,
					typeCheckingMode = "off",
				},
			},
			--[[ python = {
				analysis = {
					useLibraryCodeForTypes = true,
					autoSearchPaths = true,
					diagnosticMode = "workspace",
					autoImportCompletions = true,
					typeCheckingMode = "off",
				},
			}, ]]
		},
	})

	-- Ltex-LS
	--[[ lspconfig.ltex.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = { "tex", "bib" },
		settings = {
			ltex = {
				language = "en-US",
			},
		},
	}) ]]

	-- clangd
	lspconfig.clangd.setup({
		capabilities = capabilities,
		on_attach = on_attach,
	})

	-- bash
	lspconfig.bashls.setup({
		capabilities = capabilities,
		on_attach = on_attach,
	})

    lspconfig.texlab.setup({
        capabilities = capabilities,
        on_attach = on_attach,
    })
end

config_fun()
