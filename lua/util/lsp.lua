local M = {}

-- Set keymaps on the active lsp servers
M.on_attach = function(client, bufnr)
	local map = function(mode, lhs, rhs, desc)
		local opts = {
			noremap = true,
			silent = true,
			buffer = bufnr,
			desc = desc,
		}
		vim.keymap.set(mode, lhs, rhs, opts)
	end

	map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
	map("n", "gd", vim.lsp.buf.definition, "Go to definition")
	map("n", "K", vim.lsp.buf.hover, "Hover info")
	map("n", "gi", vim.lsp.buf.implementation, "List implementations")
	map("n", "gr", vim.lsp.buf.references, "List references")
	map("n", "<leader>ca", vim.lsp.buf.code_action, "Code actions")

	if client == "pyright" then
		map("n", "<leader>oi", ":PyrightOrganizeImports<CR>", "Organizeimports")
	end
end
return M
