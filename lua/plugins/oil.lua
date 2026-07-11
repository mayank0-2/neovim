return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			default_file_explorer = true,
			columns = {
				"icon",
			},
			skip_confirm_for_simple_edits = true,
			delete_to_trash = true,
			autosave_changes = false,
			win_options = {
				wrap = true,	
			}
		})
	
	end
}
