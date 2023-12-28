return {
	"goolord/alpha-nvim",
	config = function()
		require("alpha").setup(require("alpha.themes.dashboard").config)
	end,
}

-- Be aware that buttons show shortcuts based on assumptions; they need to be
-- properly configured!
