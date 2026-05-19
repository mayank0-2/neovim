return {
	"nvim-treesitter/nvim-treesitter",
	version = false,
	branch = "master",
	lazy = false,
	build = ':TSUpdate',
	dependencies = {
		{ 
			"nvim-treesitter/nvim-treesitter-textobjects",
			version = false,
			branch = "master",
		},
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "python", "go", "lua", "java" },
			sync_install = false,
			auto_install = true,
			highlight = { 
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },

		})
	end
}
