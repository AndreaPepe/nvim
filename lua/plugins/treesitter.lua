return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
                modules = {},
                sync_install = false,
                ignore_install = {},
                ensure_installed = {
                    "lua",
                    "c",
                    "python",
                    "markdown",
                    "bash",
                    "vim",
                    "gitcommit",
                    "gitignore",
                    "gitattributes",
                    "git_rebase",
                    "git_config",
                    "make",
                }
			})
		end,
	},
}
