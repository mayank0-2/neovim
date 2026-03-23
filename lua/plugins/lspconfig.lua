return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"williamboman/mason.nvim",
	},
	config = function()
		local lspconfig = require("lspconfig")
		
		-- Setup language servers
		local servers = { "pyright", "gopls", "ts_ls", "lua_ls" }
		
		for _, server in ipairs(servers) do
			-- Use the new Neovim 0.11+ API to avoid deprecation warnings
			if vim.fn.has("nvim-0.11") == 1 then
				vim.lsp.enable(server)
			else
				lspconfig[server].setup({})
			end
		end

		-- VS Code-like Keymaps for LSP actions
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Hover Documentation" })
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to Definition" })
		vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = "Rename Symbol" })
		vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Code Action" })
	end,
}