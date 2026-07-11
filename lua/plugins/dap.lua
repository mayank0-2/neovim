return {
  "mfussenegger/nvim-dap",
  -- Lazy-load on first use (the <leader>d* keymaps require("dap")). Keeps DAP
  -- off the startup path so it can't race with mason-tool-installer's
  -- run_on_start Mason activity, which briefly left adapter paths empty.
  lazy = true,
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "jay-babu/mason-nvim-dap.nvim",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    require("mason-nvim-dap").setup({
      ensure_installed = { "python", "delve" },
      automatic_installation = true,
      handlers = {},
    })

    dapui.setup()

    dap.listeners.after.event_initialized["dapui_config"] = dapui.open
    dap.listeners.before.event_terminated["dapui_config"] = dapui.close
    dap.listeners.before.event_exited["dapui_config"] = dapui.close
  end,
}
