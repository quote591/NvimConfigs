
-- General
vim.opt.number = true
vim.opt.wrap = true
vim.opt.cursorline = true

-- Disable if system keyboard cannot be found -- use xclip
vim.opt.clipboard = "unnamedplus" -- Use global clipboard always

-- Tabs etc
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Visual line for code length
vim.opt.colorcolumn = "80"
vim.api.nvim_set_hl(0, "ColorColumn", {ctermbg = 0, bg="#333333"})

-- Chars for invisible chars
-- vim.opt.listchars = { space = "", eol = "", tab= "" }
-- vim.opt.list = true

-- Set leader
vim.g.mapleader = vim.keycode("<Space>")
