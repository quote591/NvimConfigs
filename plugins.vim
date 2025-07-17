" File is responsible for installing plugins via plug, files are installed in
" ~/.local/share/
" To install them call :PlugInstall
" https://github.com/junegunn/vim-plug
call plug#begin()

Plug 'nvim-lua/plenary.nvim'							 " dependancy to telescope
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' } " telescope search tool
Plug 'neovim/nvim-lspconfig', { 'tag': 'v2.3.0' } " lsp

call plug#end()

