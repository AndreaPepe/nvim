vim.g.mapleader = " "
vim.g.localmapleader = " "
vim.keymap.set({'n', 'v'}, '<Space>', '<Nop>', { silent = true })

-- Use CTRL+C to clear highlights after searching
vim.keymap.set('n', '<C-c>', ':nohl<CR>',
		{desc = "Clear search highlighting", silent = true})

-- Tab to scroll ahead in menus
vim.keymap.set('i', '<Tab>', function()
	if vim.fn.pumvisible() == 1 then
		return '<C-n>'
	else
		return '<Tab>'
	end
end, { expr = true, noremap = true })

-- Shift+Tab to scroll backwards in menus
vim.keymap.set('i', '<S-Tab>', function()
	if vim.fn.pumvisible() == 1 then
		return '<C-p>'
	else
		return '<S-Tab>'
	end
end, { expr = true, noremap = true })

-- Shift+M to open Man page vertically
vim.keymap.set({'n', 'x'}, '<S-m>', ':vertical Man<CR>', { desc = "Man pages" })
