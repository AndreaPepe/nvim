return {
    "VonHeikemen/fine-cmdline.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim"
    },
    config = function()
        local opts = { noremap = true, desc = "Fine CmdLine" }
        vim.keymap.set('n', ':', '<cmd>FineCmdline<CR>', opts)
    end
}
