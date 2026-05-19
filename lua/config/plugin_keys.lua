-- Telescope
vim.keymap.set('n', '<leader>ff', function() require('telescope.builtin').find_files() end, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', function() require('telescope.builtin').live_grep() end, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', function() require('telescope.builtin').buffers() end, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fc', function() require('telescope.builtin').colorscheme({ enable_preview = true }) end, { desc = 'Telescope colorscheme' })
vim.keymap.set('n', '<leader>fh', function() require('telescope.builtin').help_tags() end, { desc = 'Telescope help tags' })

-- Conform
vim.keymap.set("n", "<leader>f", function() require("conform").format({ bufnr = 0 }) end, { desc = 'Format buffer' })

-- Project.nvim
vim.keymap.set('n', '<leader>fp', '<cmd>Telescope projects<CR>', { desc = 'Find Projects' })

-- Oil
vim.keymap.set("n", "<leader>fe", "<cmd>Oil<CR>", { desc = 'Open Oil file explorer' })

-- Neo-tree
vim.keymap.set("n", "<leader>ft", "<cmd>Neotree toggle<CR>", { desc = 'Toggle Neo-tree file explorer' })

-- LSP Diagnostics
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic error messages' })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic quickfix list' })
vim.keymap.set('n', '<leader>x', '<cmd>lclose<CR>', { desc = 'Close location list' })

-- LSP Buffer-local keymaps (Attach these only when an LSP connects to the buffer)
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts) -- Ctrl + k
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  end,
})

-- Git / Neogit
vim.keymap.set('n', '<leader>gg', '<cmd>Neogit<CR>', { desc = 'Open Neogit status' })

-- Diffview
vim.keymap.set('n', '<leader>gd', '<cmd>DiffviewOpen<CR>', { desc = 'Open Diffview' })
vim.keymap.set('n', '<leader>gh', '<cmd>DiffviewFileHistory %<CR>', { desc = 'File git history' })

-- DAP
vim.keymap.set('n', '<leader>db', function() require("dap").toggle_breakpoint() end, { desc = 'Toggle breakpoint' })
vim.keymap.set('n', '<leader>dc', function() require("dap").continue() end, { desc = 'DAP continue' })
vim.keymap.set('n', '<leader>di', function() require("dap").step_into() end, { desc = 'DAP step into' })
vim.keymap.set('n', '<leader>do', function() require("dap").step_over() end, { desc = 'DAP step over' })
vim.keymap.set('n', '<leader>dO', function() require("dap").step_out() end, { desc = 'DAP step out' })
vim.keymap.set('n', '<leader>du', function() require("dapui").toggle() end, { desc = 'Toggle DAP UI' })

-- Utility / Universal Close
vim.keymap.set("n", "<Esc>", function()
  -- Clear search highlighting
  vim.cmd("noh")
  
  -- Close any open floating windows
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local config = vim.api.nvim_win_get_config(win)
    if config.relative ~= "" then
      vim.api.nvim_win_close(win, false)
    end
  end
end, { desc = "Clear search and close floating windows" })