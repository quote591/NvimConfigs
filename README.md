# Nvim config
Plugins used in this config as of 7-9-2025
- Telescope
- Lspconfig
- Nvim-tree
- Gitsigns
- Barbar
- Lualine
And others are dependancies of these plugins and can be found in `./plugins.vim`
## Features and keybindings
`note - leader here is space, can be changed in config if you want`

Telescope for searching files an grepping 
  - `<leader>ff` - file search
  - `<leader>fg` - file grep

LspConfig for code editing and completion
  - `<leader>ld` - lookup definition
  - `<leader>lr` - lookup references
  - `<leader>lx` - disable lsp warnings/errors
  - `<learer>li` - lookup implementation

Nvim-tree - sidebar filetree for the cwd
  - `a` - create file/directories
  - `r` - rename
  - `d` - delete

Gitsigns - VSCode like git highlighting on the sidebar to see changes
  - `<leader>tb` - git blame toggle

Barbar - topbar tabs for each window
  - `A-<` - move left tab
  - `A->` - move right tab
  - `A-c` - close tab


## Dependancies
- A mono nerd font which has support for most of the graphics icons
- Vim plug, will have to be installed manually, link in `init.lua`
- Clangd language server
- ripgrep (telescope)
## Image
<img width="1905" height="1007" alt="image" src="https://github.com/user-attachments/assets/c0133ebf-9ebc-4856-8e17-842305772223" />
Example writing C++ using lspconfig autocomplete
