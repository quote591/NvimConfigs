
-- CMP enable
local capabilities_lsp = require('cmp_nvim_lsp').default_capabilities()


vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local opts = {buffer = args.buf}

		-- Unset these buffers to allow for clangd to manage
		-- the buffer by themselves
		-- Unset 'formatexpr'
		vim.bo[args.buf].formatexpr = nil
		-- Unset 'omnifunc'
		vim.bo[args.buf].omnifunc = nil

		-- Rebind lsp keybindings
		-- Display documentation of the symbol under cursor
		vim.keymap.set('n', 'K', '<cmd> lua vim.lsp.buf.hover()<cr>', opts)

		-- Jump to definition
		vim.keymap.set('n', 'gd', '<cmd> lua vim.lsp.buf.hover()<cr>', opts)

		-- Format current file
		vim.keymap.set({'n', 'x'}, 'gq', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)

		-- Displays a functions signature info
		vim.keymap.set('i', '<C-s>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)

		-- Jump to declaration
		vim.keymap.set('n', '<leader>ld', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)

		-- List all the implementations
		vim.keymap.set('n', '<leader>li', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)

		-- Jump to definition of the type symbol
		vim.keymap.set('n', '<leader>lt', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)

		-- List all references
		vim.keymap.set('n', '<leader>lr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)

		-- Renames all references to the symbol
		vim.keymap.set('n', '<leader>ln', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)

		-- Selects a code action available?
		vim.keymap.set('n', '<leader>la', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)

		-- Disable diagnostics
		vim.keymap.set('n', '<leader>lx', '<cmd>lua vim.diagnostic.enable(not vim.diagnostic.is_enabled())<cr>', opts)
	end,
})

vim.lsp.config["clangd"] = {
	-- Command to start the server
	cmd = {"clangd"},

	-- Filetypes it attaches to
	filetypes = { "c", "h", "cpp", "cc", "hpp", "objc", "objcpp", "proto", "cuda" },

	-- root_markers, files etc that will determine the root dir of a project
	root_markers= {
		".clangd",
		".clang-tidy",
		".clang-format",
		"compile_commands.json",
		"compile_flags.txt",
		"configure.ac",
		".git"
	},

	capabilities = capabilities_lsp,
	--[[ {
		offsetEncoding = { "utf-8", "utf-16" },
		textDocumentation = {
			completion = {
				editsNearCursor = true
			}
		}
	}, ]]--
}

local diagnostic_enabled = true;

local function toggle_diagnostic()
	diagnostic_enabled = not diagnostic_enabled
end

if vim.diagnostic.is_enabled() then
	vim.opt.updatetime = 250
	vim.cmd [[autocmd CursorHold, CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
end

-- TODO sort this, out we can disable the lhs warning but not floating
vim.api.nvim_create_autocmd({"CursorHold", "CursorHoldI"}, {
	callback = function()
		if diagnostic_enabled then
			vim.diagnostic.open_float(nil, { focus = false })
		end
	end,
})
vim.keymap.set("n", "<leader>lx", toggle_diagnostic, { desc = "toggle_diagnostic floating" })


vim.lsp.enable("clangd")







