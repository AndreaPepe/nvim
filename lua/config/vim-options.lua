local opt = vim.opt

vim.api.nvim_create_augroup("aucmdgrp", { clear = true })
local autocmd = vim.api.nvim_create_autocmd

-- tab and indentation
opt.tabstop = 8
opt.shiftwidth = 8
opt.softtabstop = 8
opt.expandtab = false
-- opt.smartindent = true
opt.cindent = false
opt.wrap = false

-- search items
opt.incsearch = true
opt.hlsearch = true
opt.ignorecase = false
opt.smartcase = true

-- UI appearence
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.colorcolumn = "80"
opt.signcolumn = "yes"
opt.textwidth = 79
opt.ruler = true

-- behaviour
opt.hidden = true
opt.errorbells = false
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.backspace = "indent,eol,start"
opt.splitright = true
opt.splitbelow = true
opt.mouse:append("a")
opt.clipboard:append("unnamedplus")
opt.encoding = "UTF-8"
opt.completeopt = "menu,menuone,noselect"

-- autocmd
autocmd({ "FileType" }, {
	group = "aucmdgrp",
	pattern = { "text", "tex", "plaintex", "markdown", "lua", "python" },
	callback = function()
		vim.opt_local.textwidth = 79
		vim.opt_local.wrap = true
		vim.opt_local.formatoptions = "croqt"
	end,
})
