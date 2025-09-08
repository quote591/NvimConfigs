
-- General
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.cursorline = true

-- Disable if system keyboard cannot be found -- use xclip
vim.opt.clipboard = "unnamedplus" -- Use global clipboard always

-- Tabs etc
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Colorscheme
vim.cmd.colorscheme("retrobox")

-- Visual line for code length, set after colorscheme since it changes it
vim.opt.colorcolumn = "80"
vim.api.nvim_set_hl(0, "ColorColumn", {bg="#333333"})
vim.opt.cursorline = true


-- Chars for invisible chars
vim.opt.listchars = { space = "·", eol = "↵", tab= "⇥ "}
vim.opt.list = true

-- Set leader
vim.g.mapleader = vim.keycode("<Space>")

