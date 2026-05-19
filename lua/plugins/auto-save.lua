return {
	"okuuva/auto-save.nvim",
	cmd = "ASToggle", -- optional for lazy loading on command
	event = { "InsertLeave", "TextChanged" }, -- lazy load on trigger events
	opts = {
		enabled = true,
	},
	config = function(_, opts)
		require("auto-save").setup(opts)

		-- Recreate the removed execution_message using Neovim's autocmd API
		vim.api.nvim_create_autocmd("User", {
			pattern = "AutoSaveWritePost",
			group = vim.api.nvim_create_augroup("AutoSaveMessage", { clear = true }),
			callback = function()
				vim.api.nvim_echo({ { "AutoSaved", "NonText" } }, false, {})
			end,
		})
	end,
}   