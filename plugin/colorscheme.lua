vim.pack.add({
	{ src='https://github.com/rebelot/kanagawa.nvim' },
})

require('kanagawa').setup({
	theme = 'wave',
	overrides = function (colors)
		local palette = colors.palette
		local bg = "#131313"

		return {
		    Normal = { bg = bg, fg = palette.fujiWhite },

		    LineNr = { bg = bg, fg = palette.sumiInk4 },
		    CursorLineNr = { bg = bg, fg = palette.autumnOrange,
					bold = true },
		    SignColumn = { bg = bg},
		    FoldColumn = { bg = bg},
		    -- CursorLine = { bg = "#16161e" },
		    NormalFloat = { bg = bg},
		    FloatBorder = { bg = bg, fg = palette.sumiInk4 },
		    NvimTreeNormal = { bg = bg},
		    NeoTreeNormal = { bg = bg},
		}
	end,
})

vim.cmd.colorscheme('kanagawa-wave')

-- This MUST be placed after setting the colorscheme
vim.api.nvim_create_autocmd("ColorScheme", {
	callback = function()
		-- Menu background set to theme's floating windows
		vim.api.nvim_set_hl(0, "Pmenu", { link = "NormalFloat" })
		vim.api.nvim_set_hl(0, "PmenuSel", { link = "Visual" })
		vim.api.nvim_set_hl(0, "PmenuKind", { link = "Comment" })
		vim.api.nvim_set_hl(0, "PmenuKindSel", { link = "Visual" })
	end,
})
vim.cmd("colorscheme " .. (vim.g.colors_name or "default"))
