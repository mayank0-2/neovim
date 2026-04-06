-- Telescope
vim.keymap.set('n', '<leader>ff', function() require('telescope.builtin').find_files() end, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', function() require('telescope.builtin').live_grep() end, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', function() require('telescope.builtin').buffers() end, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', function() require('telescope.builtin').help_tags() end, { desc = 'Telescope help tags' })

-- Conform
vim.keymap.set("n", "<leader>f", function() require("conform").format({ bufnr = 0 }) end, { desc = 'Format buffer' })

-- Project.nvim
vim.keymap.set('n', '<leader>fp', '<cmd>Telescope projects<CR>', { desc = 'Find Projects' })

-- Oil
vim.keymap.set("n", "<leader>fe", "<cmd>Oil<CR>", { desc = 'Open Oil file explorer' })

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

-- Copilot
-- Note: <M-...> represents the Alt (or Option) key
vim.keymap.set('i', '<M-]>', function() require("copilot.suggestion").next() end, { desc = 'Next Copilot suggestion' })
vim.keymap.set('i', '<M-[>', function() require("copilot.suggestion").prev() end, { desc = 'Previous Copilot suggestion' })
vim.keymap.set('i', '<C-]>', function() require("copilot.suggestion").dismiss() end, { desc = 'Dismiss Copilot suggestion' })

-- Copilot Chat
vim.keymap.set('n', '<leader>cct', '<cmd>CopilotChatToggle<CR>', { desc = 'CopilotChat - Toggle' })
vim.keymap.set({ 'n', 'v' }, '<leader>cce', '<cmd>CopilotChatExplain<CR>', { desc = 'CopilotChat - Explain code' })
vim.keymap.set({ 'n', 'v' }, '<leader>ccf', '<cmd>CopilotChatFixDiagnostic<CR>', { desc = 'CopilotChat - Fix Diagnostic' })

-- Git / Neogit
vim.keymap.set('n', '<leader>gg', '<cmd>Neogit<CR>', { desc = 'Open Neogit status' })