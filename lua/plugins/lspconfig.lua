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
          require("lspconfig")[server_name].setup({
            capabilities = capabilities,
          })
        end,
        pyright = function()
          require("lspconfig").pyright.setup({
            capabilities = capabilities,
            -- Explicitly recognize uv projects by checking for uv.lock
            root_dir = require("lspconfig.util").root_pattern(
              "uv.lock",
              "pyproject.toml",
            ),
            before_init = function(_, config)
              local util = require("lspconfig.util")
              local root_dir = config.root_dir or vim.fn.getcwd()
              local python_path = vim.fn.exepath("python") or "python"
              
              if vim.env.VIRTUAL_ENV then
                python_path = util.path.join(vim.env.VIRTUAL_ENV, "bin", "python")
              else
                local venvs = { ".venv", "venv", "env" }
                for _, venv in ipairs(venvs) do
                  local venv_path = util.path.join(root_dir, venv, "bin", "python")
                  if vim.fn.executable(venv_path) == 1 then
                    python_path = venv_path
                    break
                  end
                end
              end
              
              config.settings = vim.tbl_deep_extend("force", config.settings or {}, {
                python = { pythonPath = python_path }
              })
            end,
          })
        end,
        lua_ls = function()
          require("lspconfig").lua_ls.setup({
            capabilities = capabilities,
            settings = {
              Lua = {
                diagnostics = {
                  globals = { "vim" },
                },
              },
            },
          })
        end,
      },
    })

    -- Example of setting up other servers (after adding them to ensure_installed above):
    -- require("lspconfig").ts_ls.setup({})
  end,
}