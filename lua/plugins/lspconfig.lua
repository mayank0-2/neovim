return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- Tell the LSP servers about the advanced autocompletion capabilities from nvim-cmp
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- Setup Mason to easily manage LSP servers
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { 
        "lua_ls", 
        "clangd",     -- C/C++
        "gopls",      -- Go
        "pyright",    -- Python
        "ts_ls",      -- JS/TS
        "elixirls",   -- Elixir
        "jdtls",      -- Java
      },
      handlers = {
        function(server_name)
          vim.lsp.config(server_name, { capabilities = capabilities })
          vim.lsp.enable(server_name)
        end,
      },
    })

    -- Configure lua_ls to recognize the `vim` global
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })

    -- Example of setting up other servers (after adding them to ensure_installed above):
    -- vim.lsp.config("pyright", {})
    -- vim.lsp.config("ts_ls", {})
  end,
}