return {
	"ahmedkhalf/project.nvim",
	name = "project_nvim",
	opts = {
		-- Methods used to detect a project root
		detection_methods = { "pattern", "lsp" },
		-- Patterns to identify the root directory
		patterns = { ".git", "Makefile", "package.json", "go.mod", "pom.xml", "go.mod" },
	},
	config = function(_, opts)
		require("project_nvim").setup(opts)
		-- Load the telescope extension
		pcall(require("telescope").load_extension, "projects")
	end,
	keys = {
		{ "<leader>fp", "<cmd>Telescope projects<CR>", desc = "Find Projects" },
	},
}