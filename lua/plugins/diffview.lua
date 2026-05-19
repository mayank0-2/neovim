return {
  "sindrets/diffview.nvim",
  lazy = true,
  cmd = { 
    "DiffviewOpen", 
    "DiffviewClose", 
    "DiffviewToggleFiles", 
    "DiffviewFocusFiles",
    "DiffviewFileHistory",
    "DiffviewRefresh",
    "MergeTool",
  },
  config = function(_, opts)
    require("diffview").setup(opts)

    vim.api.nvim_create_user_command("MergeTool", function()
      vim.cmd("DiffviewOpen")
    end, { desc = "Open Diffview as a merge tool" })
  end,
}
