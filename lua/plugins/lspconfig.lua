return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		require("mason").setup()

		-- Advertise nvim-cmp's completion capabilities to every server.
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		-- '*' is merged into every server's config (Neovim 0.11+ API).
		vim.lsp.config("*", {
			capabilities = capabilities,
		})

		-- Per-server overrides.
		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					diagnostics = { globals = { "vim" } },
				},
			},
		})

		-- mason-lspconfig v2 auto-enables installed servers via vim.lsp.enable(),
		-- picking up the vim.lsp.config() definitions above.
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"clangd",   -- C/C++
				"gopls",    -- Go
				"ty",       -- Python
				"ts_ls",    -- JS/TS
				"elixirls", -- Elixir
				"jdtls",    -- Java
			},
			automatic_enable = true,
		})
		-- Diagnostic display is configured centrally in lua/config/options.lua.
	end,
}
