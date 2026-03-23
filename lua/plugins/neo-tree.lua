return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{ "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle NeoTree Explorer" },
	},
	opts = {
		filesystem = {
			filtered_items = {
				visible = true, -- Show hidden files by default
				hide_dotfiles = false,
				hide_gitignored = false,
			},
		},
	},
}