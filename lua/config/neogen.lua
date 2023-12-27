require("neogen").setup({
    enabled = true,
    input_after_comment = true,
    languages = {
        python = {
            template = {
                annotation_convention = "numpydoc"
            }
        }
    }
})

local opts = { noremap = true, silent = true, desc = 'Generate docstring' }
vim.keymap.set(
    'n',
    '<leader>ss',
    ':Neogen<CR>',
    opts
)
