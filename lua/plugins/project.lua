return {
	"ahmedkhalf/project.nvim",
	opts = {
		detection_methods = { "pattern" },
		patterns = { ".git", "Makefile", "*.sln", "build/env.sh" },
	},
	config = function(_, opts)
		require("project_nvim").setup(opts)
		local function update_title()
			vim.opt.title = true
			vim.opt.titlestring = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
		end
		update_title()
		vim.api.nvim_create_autocmd({ "DirChanged", "VimEnter" }, {
			callback = update_title,
		})
	end,
}
