
local cmp = require("cmp")

cmp.setup({
	-- REQUIRED - must specify a snippet engine???
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body) -- for vsnip
		end,
	},
	window = {
		-- Check https://github.com/hrsh7th/nvim-cmp/wiki/Menu-Appearance for 
		-- more info into customization
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	-- Use default <C-n> and <C-p> to navigate
	mapping = cmp.mapping.preset.insert({
		['<C-n>'] = cmp.mapping.select_next_item(),
		['<C-k>'] = cmp.mapping.select_prev_item(),

		['<C-b>'] = cmp.mapping.scroll_docs(4), -- naviate documentation
		['<C-j>'] = cmp.mapping.scroll_docs(-4),
		['<C-Space>'] = cmp.mapping.complete(), -- bring up completion menu
		['<C-e>'] = cmp.mapping.abort(), -- exit out
		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Use selected
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'vsnip' },
	}, {
		{ name = 'buffer' },
	})
})

-- If looking for lspconfig setup look in 
-- lspconfig lua

