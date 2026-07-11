vim.g.lazyvim_picker = "telescope"

-- Disable unused remote-plugin provider hosts (silences :checkhealth provider
-- warnings). None of the installed plugins need these.
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0

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
	underline = { severity = { min = vim.diagnostic.severity.ERROR } },
	update_in_insert = false,
	severity_sort = true,
})
