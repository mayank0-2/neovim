return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
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

    local builtin = require("telescope.builtin")
    
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
  end
}
