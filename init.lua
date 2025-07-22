
-- Include general settings
require("user.general")
require("user.keybindings")

-- Source the Vim script for plugins
vim.cmd("source ~/.config/nvim/plugins.vim")

-- Include lua defined configs
require("plugins.telescope")
require("plugins.lsp-cmp")
require("plugins.lspconfig")

