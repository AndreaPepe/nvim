return {
	"hrsh7th/nvim-cmp",
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")
		local lspkind = require("lspkind")

		require("luasnip/loaders/from_vscode").lazy_load()

		vim.opt.completeopt = "menu,menuone,noselect"

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
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
                    "i", "c" 
                }),
				["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(1), {
                    "i", "c" 
                }),
				["C-Space"] = cmp.mapping.complete(),
				["<CR>"] = cmp.mapping.confirm({ select = false }),
				["<C-e>"] = cmp.mapping.abort(),
			}),
			-- sources for autocompletion
			sources = cmp.config.sources({
				{ name = "nvim_lsp" }, -- lsp
				{ name = "luasnip" }, -- luasnip
				{ name = "buffer" }, -- text within the currrent buffer
				{ name = "path" }, -- file system paths
			}),
			-- configure lspkinf for VSCode-like icons
			formatting = {
				format = lspkind.cmp_format({
					maxwidth = 50,
					ellipsis_char = "...",
				}),
			},
		})
	end,
	dependencies = {
		"onsails/lspkind.nvim",
		{
			"L3MON4D3/LuaSnip",
			version = "2.*",
			build = "make install_jsregexp",
		},
	},
}
