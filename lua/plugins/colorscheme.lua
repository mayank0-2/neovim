return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {},
  },
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme nightfox]])
    end,
  }
}