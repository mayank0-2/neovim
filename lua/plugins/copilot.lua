return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    -- Intercept vim.notify to show duplicate Copilot notifications only once per session
    local original_notify = vim.notify
    local seen_messages = {}
    vim.notify = function(msg, level, opts)
      local is_copilot = (type(msg) == "string" and msg:match("[Cc]opilot")) 
        or (opts and type(opts.title) == "string" and opts.title:match("[Cc]opilot"))
      
      if is_copilot and type(msg) == "string" then
        if seen_messages[msg] then return end
        seen_messages[msg] = true
      end
      return original_notify(msg, level, opts)
    end

    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        hide_during_completion = true,
        debounce = 75,
        keymap = {
          accept = false,
          accept_word = false,
          accept_line = false,
          next = false,
          prev = false,
          dismiss = false,
        },
      },
    })
  end,
}