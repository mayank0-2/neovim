vim.g.lazyvim_picker = "telescope"

vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.scrolloff = 8

-- Sync clipboard between OS and Neovim
vim.opt.clipboard = "unnamedplus"

-- Inline diagnostics
vim.diagnostic.config({
	virtual_text = {
		prefix = "●",
		source = "if_many",
	},
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
