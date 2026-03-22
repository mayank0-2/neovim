return {
  -- The short URL for the plugin's GitHub repository
  "nvim-lualine/lualine.nvim",
  -- Any dependencies the plugin requires
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- The config function runs when the plugin is loaded
  config = function()
    require("lualine").setup({
      options = { theme = "auto" },
    })
  end,
}
