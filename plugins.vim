" File is responsible for installing plugins via plug, files are installed in
" ~/.local/share/
" To install them call :PlugInstall
" https://github.com/junegunn/vim-plug
call plug#begin()

Plug 'nvim-lua/plenary.nvim'							 " dependancy to telescope
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' } " telescope search tool
Plug 'neovim/nvim-lspconfig', { 'tag': 'v2.3.0' } " lsp

Plug 'hrsh7th/cmp-nvim-lsp' " lsp-cmp (autocomplete)
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp' " / lsp-cmp
" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip' " more lsp deps

" C/C++
"	pacman -S clangd
" Rust
"	pacman -S rust rust-analyzer
Plug 'rust-lang/rust-analyzer'

Plug 'nvim-tree/nvim-web-devicons' " optional dep for sidebar
Plug 'nvim-tree/nvim-tree.lua', { 'tag': 'v1.14.0' } " tree sidebar

call plug#end()

