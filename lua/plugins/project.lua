return {
	"ahmedkhalf/project.nvim",
	opts = {
		detection_methods = { "pattern" },
		patterns = { ".git", "Makefile", "*.sln", "build/env.sh" },
	},
	config = function(_, opts)
		require("project_nvim").setup(opts)
	end,
}