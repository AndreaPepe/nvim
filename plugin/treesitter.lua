vim.api.nvim_create_autocmd('FileType', {
	pattern = "*",
	callback = function(args)
		local buf = args.buf
		local ft = vim.bo[buf].filetype

		local lang = vim.treesitter.language.get_lang(ft)
		if not lang then
			return
		end

		local ok_add = pcall(vim.treesitter.language.add, lang)
		if not ok_add then
			return
		end
		-- start needs to be invoked manually
		pcall(vim.treesitter.start, buf, lang)
	end,
})

vim.pack.add({
	{
		src = 'https://github.com/nvim-treesitter/nvim-treesitter',
		branch = 'main',
	},
})

local parsers = {
	'bash',
	'comment',
	'diff',
	'dockerfile',
	'git_rebase',
	'git_config',
	'gitattributes',
	-- 'gitcommit',
	'gitignore',
	'json',
	'json5',
	'lua',
	'make',
	'python',
	'regex',
	'ssh_config',
	'typst',
	'toml',
	'vim',
	'vimdoc',
}

require('nvim-treesitter').install(parsers)
