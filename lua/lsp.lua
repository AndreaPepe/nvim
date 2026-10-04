vim.pack.add({
	{ src = 'https://github.com/neovim/nvim-lspconfig' },
	{ src = 'https://github.com/mason-org/mason.nvim' },
})

require("mason").setup()

local capabilities = vim.lsp.protocol.make_client_capabilities()
vim.lsp.config("*", { capabilities = capabilities })

-- lua_ls
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = { globals = { 'vim', }, },
		},
	},
})

-- clangd
vim.lsp.config("clangd", {
	filetypes = { 'c', 'cpp', 'cuda', 'C', 'h', 'hpp', 'H', },
	cmd = {
		"clangd",
		"--background-index",
		"--clang-tidy",
		"--fallback-style=LLVM",
	}
})

-- python
vim.lsp.config('pyright', {
	-- on_attach = on_attach,
	settings = {
		pyright = {
			disableOrganizeImports = false,
			useLibraryCodeForTypes = true,
			analysis = {
				useLibraryCodeForTypes = true,
				autoSearchPaths = true,
				diagnosticMode = "workspace",
				autoImportCompletions = true,
				typeCheckingMode = "off",
			},
		},
	},
})

-- bash
vim.lsp.config('bashls', {})

-- tex
vim.lsp.config('texlab', {})

-- typst
vim.lsp.config('tinymist', {})

vim.lsp.enable({
	"lua_ls",
	"clangd",
	"pyright",
	"bashls",
	"texlab",
	"tinymist",
})

-- Diagnostics
vim.diagnostic.config({
	virtual_text = false,
})

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set('n', 'gl', vim.diagnostic.open_float,
	{ desc = "Show line diagnostics" })
-- Tabella di conversione dei codici LSP in testo leggibile
local lsp_kinds = {
  [1] = "Text", [2] = "Method", [3] = "Function", [4] = "Constructor",
  [5] = "Field", [6] = "Variable", [7] = "Class", [8] = "Interface",
  [9] = "Module", [10] = "Property", [11] = "Unit", [12] = "Value",
  [13] = "Enum", [14] = "Keyword", [15] = "Snippet", [16] = "Color",
  [17] = "File", [18] = "Reference", [19] = "Folder", [20] = "EnumMember",
  [21] = "Constant", [22] = "Struct", [23] = "Event", [24] = "Operator",
  [25] = "TypeParameter"
}

-- Funzione che intercetta i suggerimenti e popola la colonna "kind"
local function custom_omnifunc(findstart, base)
  if findstart == 1 then
    return vim.lsp.omnifunc(findstart, base)
  end

  -- Ottiene i risultati normali dell'LSP
  local result = vim.lsp.omnifunc(findstart, base)
  if type(result) == "table" and result.items then
    for _, item in ipairs(result.items) do
      -- Se l'LSP ha fornito un tipo (kind) numerico, lo convertiamo in testo
      if item.user_data and item.user_data.nvim and item.user_data.nvim.lsp and item.user_data.nvim.lsp.completion_item then
        local completion_item = item.user_data.nvim.lsp.completion_item
        if completion_item.kind and lsp_kinds[completion_item.kind] then
          -- Imposta la colonna destra del menu con il tipo formattato
          item.kind = " " .. lsp_kinds[completion_item.kind]
        end
      end
    end
  end
  return result
end

-- Autocomplete
vim.opt.autocomplete = true
vim.opt.completeitemalign = "abbr,kind,menu"
vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup("UserGroup", { clear = false }),
	callback = function(ev)
		local client = assert(
			vim.lsp.get_client_by_id(ev.data.client_id)
		)

		if client:supports_method('textDocument/completion') then
			vim.lsp.completion.enable(true, client.id, ev.buf,
				{ autotrigger = true })

			vim.bo[ev.buf].omnifunc = "v:lua.custom_omnifunc"
		end
	end
})
