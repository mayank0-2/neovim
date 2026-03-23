return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			-- List the servers you want Mason to install automatically
			ensure_installed = { "pyright", "gopls", "ts_ls", "lua_ls" },
		})
	end,
}