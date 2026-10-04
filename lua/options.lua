-- tab and indentation
vim.opt.tabstop = 8
vim.opt.shiftwidth = 8
vim.opt.softtabstop = 8
vim.opt.expandtab = false
vim.opt.cindent = false
vim.opt.wrap = false

-- search items
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = false
vim.opt.smartcase = true
vim.opt.completeopt = "menuone,noselect,fuzzy,nosort"

-- UI appearence
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"
vim.opt.textwidth = 79
vim.opt.ruler = true
vim.opt.cmdheight = 0

-- behaviour
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.backspace = "indent,eol,start"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.mouse:append("a")
vim.opt.clipboard:append("unnamedplus")
vim.opt.encoding = "UTF-8"
vim.opt.winborder = "rounded"
vim.opt.pumborder = "rounded"
vim.opt.pumheight = 8

-- Markdown helper
vim.opt.conceallevel = 2

-- C helper
vim.filetype.add({
	extension = {
		h = 'c',
	},
})

-- autocmd
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "text", "tex", "plaintex", "markdown", "lua", "python" },
	callback = function()
		vim.opt_local.textwidth = 79
		vim.opt_local.wrap = true
		vim.opt_local.formatoptions = "croqt"
	end,
})

vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	callback = function()
		vim.hl.on_yank()
	end,
})
