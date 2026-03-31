return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ':TSUpdate',
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = { "python", "go", "lua" },
			sync_install = false,
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },

		})
	end
}
