return {
	"RRethy/vim-illuminate",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		require("illuminate").configure({
			delay = 200,
			large_file_cutoff = 2000,
			-- 'treesitter' provider dropped: crashes on nvim 0.12 (uses a
			-- removed treesitter API). LSP + regex cover highlighting.
			providers = {
				"lsp",
				"regex",
			},
		})
	end,
}
