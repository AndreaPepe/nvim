local on_attach = require("util.lsp").on_attach
-- local diagnostics_signs = require("util.lsp").diagnostic_signs

local config_fun = function()
	-- this should be placed before requiring lspconfig
	require("neoconf").setup({})
	local cmp_nvim_lsp = require("cmp_nvim_lsp")

	-- -- attaching diagnostic signs
	-- for type, icon in pairs(diagnostics_signs) do
	-- 	local hl = "DiagnosticSign" .. type
	-- 	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
	-- end

	local capabilities = cmp_nvim_lsp.default_capabilities()

	-- lua LS
	vim.lsp.config('lua_ls', {
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
	vim.lsp.config('pyright', {
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

	-- clangd
	vim.lsp.config('clangd', {
		capabilities = capabilities,
		on_attach = on_attach,
	})

	-- bash
	vim.lsp.config('bashls', {
		capabilities = capabilities,
		on_attach = on_attach,
	})

	--tex
	vim.lsp.config('texlab', {
		capabilities = capabilities,
		on_attach = on_attach,
	})


	-- enable LSP
	vim.lsp.enable(
		'lua_ls',
		'pyright',
		'clangd',
		'bashls',
		'texlab'
	)


	vim.lsp.set_log_level("ERROR")
end

config_fun()
