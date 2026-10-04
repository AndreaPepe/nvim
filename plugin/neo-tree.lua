vim.pack.add({
	-- dependencies
	{ src = 'https://github.com/nvim-lua/plenary.nvim' },
	{ src = 'https://github.com/nvim-tree/nvim-web-devicons' },
	{ src = 'https://github.com/MunifTanjim/nui.nvim' },
	-- neo-tree
	{
		src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
		version = vim.version.range('3')
	},
})

local neotree = require('neo-tree')
neotree.setup({
	filesystem = {
		filtered_items = {
			visible = true,
			hide_dotfiles = false,
			hide_gitignored = false,
			show_hidden_count = true,
			hide_by_name = { '.git', },
		},
	},
})

vim.keymap.set('n', '<C-n>', ':Neotree filesystem toggle left<CR>', {})
