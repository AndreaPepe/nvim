vim.pack.add({
	{ src = 'https://github.com/nvim-mini/mini.nvim' },
})

-- notifications
require("mini.notify").setup({
	-- only show messages
	content = {
		format = function(notif)
			return notif.msg
		end,
	},
})

-- cmdline completion
require("mini.cmdline").setup({
	autocorrect = { enable = false },
})
