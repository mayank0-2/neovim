return {
	"nvim-treesitter/nvim-treesitter",
	opts = {
		-- Add any languages you use here
		ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "go", "python", "java", "json"},
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
	},
	event = {"BufReadPre", "BufNewFile"}	
	
}
