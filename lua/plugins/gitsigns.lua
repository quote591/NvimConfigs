
require('gitsigns').setup{
	-- Default on
	current_line_blame = true,
	on_attach = function(bufnr)
		local gitsigns = require('gitsigns')

		local function map(mode, l, r, opts)
			opts = opts or {}
			opts.buffer = bufnr
			vim.keymap.set(mode, l, r, opts)
		end

		map('n', '<leader>tb', gitsigns.toggle_current_line_blame)
		map('n', '<leader>tw', gitsigns.toggle_word_diff) -- not sure, not got working

	end
}

