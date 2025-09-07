
-- Horizontal and verticle split
vim.keymap.set({"n", "i", "v"}, "<C-p>", "<CMD>:split<CR>", { desc = "Open horizontal split" })
vim.keymap.set({"n", "i", "v"}, "<C-o>", "<CMD>:vsplit<CR>", { desc = "Open verticle split" })


local showRelativeLines = true;
function ToggleRelativeLines()
	vim.opt.relativenumber = not showRelativeLines;
	showRelativeLines = not showRelativeLines;
end

-- Toggle relative lines
vim.keymap.set({"n","v"}, "t", ToggleRelativeLines, { desc = "Toggle relative line numbers" })

