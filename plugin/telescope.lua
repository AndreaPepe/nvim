vim.pack.add({
	{ src = 'https://github.com/nvim-lua/plenary.nvim' },
	{ src = 'https://github.com/nvim-telescope/telescope-fzf-native.nvim' },
	{ src = 'https://github.com/nvim-telescope/telescope.nvim' },
	{ src = 'https://github.com/nvim-telescope/telescope-ui-select.nvim' },
})

local tsbuiltin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', tsbuiltin.find_files, { desc = "Find files" })
vim.keymap.set('n', '<leader>fg', tsbuiltin.live_grep, { desc = "Live grep" })

local ts = require("telescope")
ts.setup({
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown({}),
		},
	},
})
ts.load_extension("ui-select")
