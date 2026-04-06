return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "nvim-telescope/telescope.nvim", -- optional, for telescope integrations
  },
  config = function()
    require("neogit").setup({
      integrations = {
        -- Use telescope for branches, commits, etc.
        telescope = true,
      },
    })
  end,
}