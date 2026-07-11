return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	dependencies = { "williamboman/mason.nvim" },
	config = function()
		require("mason-tool-installer").setup({
			-- CLI tools used by conform.nvim (formatters) and nvim-lint (linters).
			-- LSP servers stay in mason-lspconfig; DAP adapters in mason-nvim-dap.
			ensure_installed = {
				-- formatters
				"stylua",       -- lua
				"clang-format", -- c / cpp
				"goimports",    -- go
				"prettier",     -- js / ts
				-- linters
				"revive",       -- go
				"eslint_d",     -- js / ts
			},
			run_on_start = true,
		})
	end,
}
