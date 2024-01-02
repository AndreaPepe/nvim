local map = function(mode, lhs, rhs, desc)
	local opts = { noremap = true, silent = true, desc = desc }
	vim.keymap.set(mode, lhs, rhs, opts)
end

local keywords = { "TODO", "FIX" }
map("n", "]t", function()
	require("todo-comments").jump_next({ keywords = keywords })
end, "Goto next TODO/FIX comment")
map("n", "[t", function()
	require("todo-comments").jump_prev({ keywords = keywords })
end, "Goto previous TODO/FIX comment")
