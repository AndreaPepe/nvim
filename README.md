# NeoVim Configuration
My personal NeoVim configuration.

![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)

⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⢀⡤⢖⣫⣴⣾⣿⣧⠔⠒⣤
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢤⣴⣞⣥⡶⢛⡿⢻⣿⣿⣿⣿⡿⠟
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠻⢿⣿⣶⢟⣻⣿⣿⡿⠟⠉⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠳⣀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⡿⠟⠋⠁⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠴⣖⠋⠁⠀⠀⠀⢀⠀⠀⠀⠂⠈⣀⣄⣀⣊⣀⣀⣀⣄⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢶⡋⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢠⣬⣿⠤⠤⡏⢩⡿⢻⢿⡟⠉⠛⡟⢿⣿⡀⠀⠀⠀⠀⠀⠈⢣⠀⠀⠀⠀⠀⠀⠀⠀⢺⡃⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣀⡴⠋⠀⢸⡇⠀⠀⡼⠈⠀⠀⠀⢰⠀⠀⠀⠀⠀⡄⠐⡄⠀⠈⡆⠀⠀⠀⠀⠀⠀⣠⡤⠽⠂⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠉⠉⣹⠀⢸⡇⠀⢰⠃⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⢣⠀⠱⡀⠀⢣⠀⠀⠀⠀⣃⡉⠉⡙⢦⣀⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⡴⠟⡇⢚⡇⢀⣸⡀⠀⠀⠀⡄⢸⠀⠀⠀⠀⠀⠸⡀⠀⠁⠀⢾⣀⡀⣀⣞⣥⣹⣤⣷⠀⠙⠿⣍⣶⣤⣄⡀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢠⣴⣇⣼⡏⠉⣙⣷⣄⠀⠀⠓⢎⡀⠀⠀⠀⣠⠴⡿⠭⠁⠀⠀⠀⡽⢩⣿⣀⠉⣿⣿⣧⠀⠀⠀⠹⣿⣆⠈⠳⣶
⠶⢯⡓⣦⣄⣀⡤⣖⠉⠃⡀⢹⣿⡌⢟⠻⠿⠿⣦⣄⠘⠟⣤⣶⣛⣥⣤⣧⣤⣦⠀⠀⠀⣵⣸⣿⡟⣸⠉⢿⣿⡆⠀⠀⠀⡏⢯⠳⣄⠈
⠀⠀⠙⠛⠲⣈⡷⡀⠱⡀⢱⠀⢹⣷⡀⠉⠉⠙⢻⣿⠀⠈⠙⠓⠉⠉⠉⣿⠉⠀⠀⠀⠀⣿⣿⣿⣿⡇⢀⠀⣿⡇⠀⠀⠀⣿⠈⣶⣿⣷
⠀⠀⠀⠀⠀⠉⢳⡘⡆⢣⠈⡇⢸⢈⣷⡀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⢨⠀⠀⠀⠀⠀⢿⣿⣿⣿⡇⠈⢿⣿⡇⠀⠀⠀⢸⣼⣿⡿⠟
⣾⣶⡄⢠⠶⡄⠸⣄⠙⣼⠀⣧⡼⠋⢻⣧⡀⠀⠀⠙⢤⡄⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⣠⠏⢸⣿⣿⣧⠀⠸⣿⣷⠀⠀⠀⠸⡏⡅⠀⠀
⣉⠿⣧⢸⡀⢹⠀⢈⣾⣿⠞⣃⠴⠒⡿⠉⢷⡀⠀⠤⢼⠄⠠⠤⠤⣀⡀⠀⠀⠀⣠⠞⠁⢠⠞⠛⠋⠁⠀⠀⣿⣿⠀⠀⠀⠀⣷⢣⠀⠀
⠈⣿⡟⠈⠧⠞⢠⡞⢹⠟⠋⠁⠀⣸⠃⠀⢰⣿⣄⠀⠈⠓⠲⠶⠦⠀⠀⢀⡤⠚⠁⠀⡰⠫⡆⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⢹⡆⠀⠀
⢀⡿⠷⣦⡀⢀⣀⡿⠁⠀⠀⠀⣰⠇⠀⠀⣸⣿⣿⣦⣀⣈⣆⣀⣀⡴⠞⠁⠀⠀⢀⡞⠁⡜⠀⠀⠀⣄⠀⠀⣾⣿⣷⠀⠀⠀⠘⣇⠀⠀
⡞⣴⢦⠙⣷⠞⣩⠞⢦⣀⠀⣰⠏⠀⠀⢠⣿⣿⣿⣿⣿⡏⠀⢙⣧⣀⡀⠀⣀⡴⠋⢀⣼⠃⠀⠀⠀⣿⡄⠀⣿⣿⣿⡄⠀⠀⠀⢹⡶⠄
⢧⡈⠶⡴⢣⡞⣡⣤⠄⠉⣷⠏⠀⠀⢀⡿⢹⣿⣿⣿⣿⠃⠀⠿⡈⠃⠈⠉⠀⠀⢀⣾⠏⠀⠀⠀⠀⢸⣿⣦⣿⣿⣿⣇⠀⠀⠀⠈⣧⠀
⠛⢿⡞⠁⢸⡿⠋⠁⣠⡾⠃⠀⠀⢀⣾⠃⢸⣿⣿⣿⣿⠷⠶⠤⢹⣆⠀⠀⢀⣴⣿⠿⠴⠒⠒⠒⠋⠉⠉⠈⣿⣿⣿⣿⡄⠀⠀⠀⠘⣆
⠀⣟⣠⣴⠟⠅⣠⡾⠋⠀⠀⠀⣠⡞⢹⠀⢸⣿⣿⣿⣿⡄⠀⠀⠀⠈⠳⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣷⡀⠀⠀⠀⠈
⣾⣿⠟⠁⣀⡼⠋⠀⠀⠀⢠⣾⣿⠇⢸⠀⢸⣿⣿⣿⣿⡇⢰⠀⠀⠀⠰⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⣄⡴⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀
⠿⠁⣠⡶⠋⠀⠀⠀⢀⣴⡿⠋⠈⠀⠸⠀⢸⣿⣿⣿⣿⡇⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡔⠉⢠⣿⣿⣿⣿⣿⣿⠇⠹⣄⠀⠀
⣠⠾⠋⠀⠀⠀⢀⡶⢻⠉⠀⡀⠀⠀⡶⠀⢸⣿⣿⣿⣿⡇⠈⡆⠀⠀⠠⡄⠀⠀⠀⠀⠀⠀⡨⠛⠂⠀⣼⣿⣿⣿⣿⣿⡟⠀⠠⠚⢷⣂
⠁⠀⣀⣀⣀⡶⠋⠀⠀⢧⢀⡇⠀⠀⠀⠀⠈⣿⣿⣿⣿⡇⠀⠸⣆⠀⠀⢿⣄⠀⠀⠀⢠⡜⠁⠀⢀⣰⣿⣿⣿⣿⣿⣿⠁⠰⠀⠀⠀⠙


# Table of Contents
1. [Requirements](#requirements)
2. [Installation](#installation)
    1. [How to install a NerdFont](#installation-nerdfont)
3. [Plugins](#plugins)
    1. [UI](#plugins-ui)
    2. [Utilities](#plugins-utilities)
    3. [LSP](#plugins-lsp)
    4. [Completion](#plugins-completion)

## Requirements <a name="requirements"></a>
* __NeoVim__ >= 0.10
* __lua__, __luacheck__, __luarocks__ need to be installed on the system
* __wget__
* __node__, __npm__
* __curl__
* __tar__
* __git__
* __unzip__
* __gzip__
* C compiler in PATH and __libstdc++__ installed

## Installation <a name="installation"></a>
To get this configuration to properly work, you need to use one NerdFont as
your terminal font. 
Please follow [How to install a NerdFont](#installation-nerdfont).

Supposing all requirements are installed, the only thing you need to do to use
this NeoVim configuration is to clone the repository and set it as your `nvim`
configuration, e.g. through a symlink:
```sh
git clone https://github.com/AndreaPepe/nvim.git
mkdir -p ~/.config
ln -s $(realpath nvim) ~/.config/nvim
```

### How to install a NerdFont <a name="installation-nerdfont">
You can easily download your favorite NerdFont and install it:
```sh
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip \
&& cd ~/.local/share/fonts \
&& unzip JetBrainsMono.zip \
&& rm JetBrainsMono.zip \
&& fc-cache -fv
```

## Plugins <a name="plugins"></a>
All plugins are managed using the [**Lazy**](https://github.com/folke/lazy.nvim) Plugin Manager.

### UI <a name="plugins-ui"></a>
- [alpha-nvim](https://github.com/goolord/alpha-nvim): greeter
- [catppuccin](https://github.com/catppuccin/nvim): colorscheme
- [fine-cmdline](https://github.com/VonHeikemen/fine-cmdline.nvim): floating input bar
    - [nui](https://github.com/MunifTanjim/nui.nvim): dependency
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim): add indentation guides
- [lualine](https://github.com/nvim-lualine/lualine.nvim): status line
- [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim): file explorer
    - [plenary](https://github.com/nvim-lua/plenary.nvim): dependency
    - [nvim-dev-webicons](https://github.com/nvim-tree/nvim-web-devicons): dependency - NerdFont icons
    <!-- - [nui](https://github.com/MunifTanjim/nui.nvim): dependency -->
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): parsing and syntax highlighting
- [telescope-ui-select](https://github.com/nvim-telescope/telescope-ui-select.nvim): set `vim.ui.select` to telescope
- [todo-comments](https://github.com/folke/todo-comments.nvim): highlight TODO comments
    <!-- - [plenary](https://github.com/nvim-lua/plenary.nvim): dependency -->
- [which-key](https://github.com/folke/which-key.nvim): keybindings helper

### Utilities <a name="plugins-utilities"></a>
- [Comment](https://github.com/numToStr/Comment.nvim): commenting helper
- [Mason](https://github.com/williamboman/mason.nvim): package manager for LSP/DAP servers, formatters and linters
- [neoconf](https://github.com/folke/neoconf.nvim): global and project-local settings manager
- [neogen](https://github.com/danymat/neogen): documentation comments generator
    <!-- - [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): dependency -->
- [none-ls](https://github.com/nvimtools/none-ls.nvim): support for diagnostics, formatting and linting
    - [none-ls-extras](https://github.com/nvimtools/none-ls-extras.nvim): dependency
    - [none-ls-luacheck](https://github.com/gbprod/none-ls-luacheck.nvim): dependency
- [telescope](https://github.com/nvim-telescope/telescope.nvim): fuzzy finder
    <!-- - [plenary](https://github.com/nvim-lua/plenary.nvim): dependency -->

### LSP <a name="plugins-lsp"></a>
- [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim): helper for LSP setup
- [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim): bridge between `mason` and `nvim-lspconfig`
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig): LSP configuration
    <!-- - [mason](https://github.com/williamboman/mason.nvim): dependency -->
    - [nvim-autopairs](https://github.com/windwp/nvim-autopairs): dependency 

### Completion <a name="plugins-completion"></a>
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip): code snippet collection
    - [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip): bridge between `nvim-cmp` and `LuaSnip`
    - [friendly-snippets](https://github.com/rafamadriz/friendly-snippets): VSCode snippets
- [neodev](https://github.com/folke/neodev.nvim): completion and suggestions for Lua `LSP` for NeoVim configuration
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp): completion engine
    - [cmp-buffer](https://github.com/hrsh7th/cmp-buffer): buffer source for completion
    - [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline): command line source for completion
    - [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp): bridge between `LSP` and completion engine
    - [cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua): NeoVim Lua source for completion
    - [cmp-path](https://github.com/hrsh7th/cmp-nvim-lua): filesystem path source for completion
    - [lspkind](https://github.com/onsails/lspkind.nvim): VSCode-like pictograms
