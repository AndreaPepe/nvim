vim.pack.add({
  "https://github.com/nvim-tree/nvim-web-devicons",
  "https://github.com/goolord/alpha-nvim",
})

local buttons = {
	{ "f", "  Find file", "<cmd>Telescope find_files<cr>" },
	{ "n", "  New file", "<cmd>ene <BAR> startinsert <cr>" },
	{ "r", "  Recent files", "<cmd>Telescope oldfiles<cr>" },
	{ "g", "  Find text", "<cmd>Telescope live_grep<cr>" },
	{ "c", "  Config", "<cmd>edit $HOME/.config/nvim/<cr>" },
	{ "q", "  Quit", "<cmd>qa<cr>" },
}

local logo = {
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⢀⡤⢖⣫⣴⣾⣿⣧⠔⠒⣤]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢤⣴⣞⣥⡶⢛⡿⢻⣿⣿⣿⣿⡿⠟]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠻⢿⣿⣶⢟⣻⣿⣿⡿⠟⠉⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠳⣀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⡿⠟⠋⠁⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠴⣖⠋⠁⠀⠀⠀⢀⠀⠀⠀⠂⠈⣀⣄⣀⣊⣀⣀⣀⣄⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢶⡋⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⢠⣬⣿⠤⠤⡏⢩⡿⢻⢿⡟⠉⠛⡟⢿⣿⡀⠀⠀⠀⠀⠀⠈⢣⠀⠀⠀⠀⠀⠀⠀⠀⢺⡃⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⣀⡴⠋⠀⢸⡇⠀⠀⡼⠈⠀⠀⠀⢰⠀⠀⠀⠀⠀⡄⠐⡄⠀⠈⡆⠀⠀⠀⠀⠀⠀⣠⡤⠽⠂⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠉⠉⣹⠀⢸⡇⠀⢰⠃⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⢣⠀⠱⡀⠀⢣⠀⠀⠀⠀⣃⡉⠉⡙⢦⣀⡀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⡴⠟⡇⢚⡇⢀⣸⡀⠀⠀⠀⡄⢸⠀⠀⠀⠀⠀⠸⡀⠀⠁⠀⢾⣀⡀⣀⣞⣥⣹⣤⣷⠀⠙⠿⣍⣶⣤⣄⡀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⢠⣴⣇⣼⡏⠉⣙⣷⣄⠀⠀⠓⢎⡀⠀⠀⠀⣠⠴⡿⠭⠁⠀⠀⠀⡽⢩⣿⣀⠉⣿⣿⣧⠀⠀⠀⠹⣿⣆⠈⠳⣶]],
	[[⠶⢯⡓⣦⣄⣀⡤⣖⠉⠃⡀⢹⣿⡌⢟⠻⠿⠿⣦⣄⠘⠟⣤⣶⣛⣥⣤⣧⣤⣦⠀⠀⠀⣵⣸⣿⡟⣸⠉⢿⣿⡆⠀⠀⠀⡏⢯⠳⣄⠈]],
	[[⠀⠀⠙⠛⠲⣈⡷⡀⠱⡀⢱⠀⢹⣷⡀⠉⠉⠙⢻⣿⠀⠈⠙⠓⠉⠉⠉⣿⠉⠀⠀⠀⠀⣿⣿⣿⣿⡇⢀⠀⣿⡇⠀⠀⠀⣿⠈⣶⣿⣷]],
	[[⠀⠀⠀⠀⠀⠉⢳⡘⡆⢣⠈⡇⢸⢈⣷⡀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⢨⠀⠀⠀⠀⠀⢿⣿⣿⣿⡇⠈⢿⣿⡇⠀⠀⠀⢸⣼⣿⡿⠟]],
	[[⣾⣶⡄⢠⠶⡄⠸⣄⠙⣼⠀⣧⡼⠋⢻⣧⡀⠀⠀⠙⢤⡄⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⣠⠏⢸⣿⣿⣧⠀⠸⣿⣷⠀⠀⠀⠸⡏⡅⠀⠀]],
	[[⣉⠿⣧⢸⡀⢹⠀⢈⣾⣿⠞⣃⠴⠒⡿⠉⢷⡀⠀⠤⢼⠄⠠⠤⠤⣀⡀⠀⠀⠀⣠⠞⠁⢠⠞⠛⠋⠁⠀⠀⣿⣿⠀⠀⠀⠀⣷⢣⠀⠀]],
	[[⠈⣿⡟⠈⠧⠞⢠⡞⢹⠟⠋⠁⠀⣸⠃⠀⢰⣿⣄⠀⠈⠓⠲⠶⠦⠀⠀⢀⡤⠚⠁⠀⡰⠫⡆⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⢹⡆⠀⠀]],
	[[⢀⡿⠷⣦⡀⢀⣀⡿⠁⠀⠀⠀⣰⠇⠀⠀⣸⣿⣿⣦⣀⣈⣆⣀⣀⡴⠞⠁⠀⠀⢀⡞⠁⡜⠀⠀⠀⣄⠀⠀⣾⣿⣷⠀⠀⠀⠘⣇⠀⠀]],
	[[⡞⣴⢦⠙⣷⠞⣩⠞⢦⣀⠀⣰⠏⠀⠀⢠⣿⣿⣿⣿⣿⡏⠀⢙⣧⣀⡀⠀⣀⡴⠋⢀⣼⠃⠀⠀⠀⣿⡄⠀⣿⣿⣿⡄⠀⠀⠀⢹⡶⠄]],
	[[⢧⡈⠶⡴⢣⡞⣡⣤⠄⠉⣷⠏⠀⠀⢀⡿⢹⣿⣿⣿⣿⠃⠀⠿⡈⠃⠈⠉⠀⠀⢀⣾⠏⠀⠀⠀⠀⢸⣿⣦⣿⣿⣿⣇⠀⠀⠀⠈⣧⠀]],
	[[⠛⢿⡞⠁⢸⡿⠋⠁⣠⡾⠃⠀⠀⢀⣾⠃⢸⣿⣿⣿⣿⠷⠶⠤⢹⣆⠀⠀⢀⣴⣿⠿⠴⠒⠒⠒⠋⠉⠉⠈⣿⣿⣿⣿⡄⠀⠀⠀⠘⣆]],
	[[⠀⣟⣠⣴⠟⠅⣠⡾⠋⠀⠀⠀⣠⡞⢹⠀⢸⣿⣿⣿⣿⡄⠀⠀⠀⠈⠳⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣷⡀⠀⠀⠀⠈]],
	[[⣾⣿⠟⠁⣀⡼⠋⠀⠀⠀⢠⣾⣿⠇⢸⠀⢸⣿⣿⣿⣿⡇⢰⠀⠀⠀⠰⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⣄⡴⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀]],
	[[⠿⠁⣠⡶⠋⠀⠀⠀⢀⣴⡿⠋⠈⠀⠸⠀⢸⣿⣿⣿⣿⡇⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡔⠉⢠⣿⣿⣿⣿⣿⣿⠇⠹⣄⠀⠀]],
	[[⣠⠾⠋⠀⠀⠀⢀⡶⢻⠉⠀⡀⠀⠀⡶⠀⢸⣿⣿⣿⣿⡇⠈⡆⠀⠀⠠⡄⠀⠀⠀⠀⠀⠀⡨⠛⠂⠀⣼⣿⣿⣿⣿⣿⡟⠀⠠⠚⢷⣂]],
	[[⠁⠀⣀⣀⣀⡶⠋⠀⠀⢧⢀⡇⠀⠀⠀⠀⠈⣿⣿⣿⣿⡇⠀⠸⣆⠀⠀⢿⣄⠀⠀⠀⢠⡜⠁⠀⢀⣰⣿⣿⣿⣿⣿⣿⠁⠰⠀⠀⠀⠙]],
}

local status_ok, alpha = pcall(require, "alpha")
if status_ok then
	local dashboard = require("alpha.themes.dashboard")

	dashboard.section.header.val = logo

	dashboard.section.buttons.val = {}
	for _, bdef in pairs(buttons) do
		local btn = dashboard.button(unpack(bdef))
		btn.opts.hl = "AlphaHeader"
		btn.opts.hl_shortcut = "AlphaShortcut"
		table.insert(dashboard.section.buttons.val, btn)
	end

	dashboard.section.header.opts.hl = "AlphaHeader"
	dashboard.section.buttons.opts.hl = "AlphaButtons"

	dashboard.config.opts.noautocmd = true

	alpha.setup(dashboard.config)
end

