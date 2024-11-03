return {
	"danymat/neogen",
	dependencies = "nvim-treesitter/nvim-treesitter",
	-- Uncomment next line if you want to follow only stable versions
	version = "*",
	config = function()
		local opts = {
			noremap = true,
			silent = true,
			desc = "Generate docstring",
		}
		local neogen = require("neogen")
		neogen.setup({ enabled = true })
		vim.keymap.set("n", "<leader>ss", function()
			neogen.generate({
				annotation_convention = { python = "numpydoc" },
			})
		end, opts)
	end,
}
