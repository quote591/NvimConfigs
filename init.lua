
-- Include general settings
require("user.general")
require("user.keybindings")

-- Setup plug for windows or linux
-- No, download it yourself: https://github.com/junegunn/vim-plug


local function getOsType()
	local os_type = package.config:sub(1, 1) == "\\" and "Windows" or "Linux"
	return os_type
end

local init_dir
local os_type = getOsType()

if (os_type == "Windows") then
	init_dir = "$HOME/AppData/Local/nvim"
elseif (os_type == "Linux") then
	init_dir = "~/.config/nvim"
end
-- Source the Vim script for plugins
vim.cmd("source " .. init_dir .. "/plugins.vim")

-- Include lua defined configs
require("plugins.telescope")
require("plugins.lsp-cmp")
require("plugins.lspconfig")
require("plugins.nvim-tree")
require("plugins.gitsigns")
require("plugins.barbar")
require("plugins.lualine")

