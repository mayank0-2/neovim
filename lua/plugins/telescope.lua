return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "ahmedkhalf/project.nvim",
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    require("telescope").setup({
	defaults = {
		layout_strategy = "center",
		layout_config = {
			center = {
				width = 0.9,
			},
		},
	},
	pickers = {
		find_files = {
			theme = "dropdown",
			layout_config = {
				center = {
					width = 0.9,
				}
			}
		}
	},
	extensions = {}
    })

    require("telescope").load_extension("projects")
  end
}
