
-- Horizontal and verticle split
vim.keymap.set({"n", "i", "v"}, "<C-p>", "<CMD>:split<CR>", { desc = "Open horizontal split" })
vim.keymap.set({"n", "i", "v"}, "<C-o>", "<CMD>:vsplit<CR>", { desc = "Open verticle split" })


