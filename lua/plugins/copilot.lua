return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({
			suggestion = {
				enabled = true,
				auto_trigger = true, -- Shows ghost text automatically, like VS Code
				keymap = {
					accept = "<Tab>", -- Accept the suggestion with Tab
					next = "<M-]>", -- Cycle to next suggestion (Alt + ])
					prev = "<M-[>", -- Cycle to previous suggestion (Alt + [)
					dismiss = "<C-]>", -- Dismiss the suggestion (Ctrl + ])
				},
			},
		})
	end,
}