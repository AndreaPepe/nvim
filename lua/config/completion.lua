local cmp = require("cmp")
local luasnip = require("luasnip")
local lspkind = require("lspkind")

require("luasnip.loaders.from_vscode").lazy_load()

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		["<Tab>"] = cmp.mapping(function(fallback)
			-- this snippet will confirm with <Tab> or confirm the first
			-- item if no one is selected
			if cmp.visible() then
				local entry = cmp.get_selected_entry()
				if not entry then
					cmp.select_next_item({
						behavior = cmp.SelectBehavior.Select,
					})
				else
					cmp.confirm()
				end
			else
				fallback()
			end
		end, { "s", "i", "c" }),

		--scroll docs
		["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), {
			"i",
			"c",
		}),
		["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(1), {
			"i",
			"c",
		}),
		["<C-Space>"] = cmp.mapping.complete(),
		["<CR>"] = cmp.mapping.confirm({ select = false }),
		["<C-e>"] = cmp.mapping.abort(),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	}, {
		{ name = "buffer" },
		{ name = "path" },
	}),
	-- configure lspkind for VSCode-like icons
	formatting = {
		format = lspkind.cmp_format({
			maxwidth = 50,
			ellipsis_char = "...",
		}),
	},
})

cmp.setup.cmdline("/", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" },
	},
})

cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "path" },
	},
	{
		{ name = "cmdline", option = {
			ignore_cmds = { "Man", "!" },
		} },
	},
})

-- neovim diagnostics: float (rather than virtual-text)
vim.diagnostic.config({
	virtual_text = {
		source = "if_many",
		prefix = "● ",
	},
	update_in_insert = true,
	underline = true,
	severity_sort = true,
	float = {
		focusable = false,
		style = "minimal",
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
})

local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup({
	debug = true,
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.shfmt,
		null_ls.builtins.formatting.black,
		require("none-ls.formatting.latexindent"),
		require("none-ls.diagnostics.ruff"),
		require("none-ls-luacheck.diagnostics.luacheck"),
	},
	-- format on save
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({
						bufnr = bufnr,
						filter = function(_client)
							return _client.name == "null-ls"
						end,
					})
				end,
			})
		end
	end,
})
