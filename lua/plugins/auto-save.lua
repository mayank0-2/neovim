return {
	"okuuva/auto-save.nvim",
	cmd = "ASToggle", -- optional for lazy loading on command
	event = { "InsertLeave", "TextChanged" }, -- lazy load on trigger events
	opts = {
		enabled = true,
		execution_message = {
			message = function()
				-- Return an empty string to disable the "AutoSave: saved at..." message
				return "AutoSaved"
			end,
            dim = 0.18,
            cleaning_interval = 1250,
		},
	},
}   