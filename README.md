# Neovim Configuration

This is my personal Neovim configuration, bootstrapped and managed with [lazy.nvim](https://github.com/folke/lazy.nvim).

## 🚀 Features & Plugins

- **Plugin Manager:** `lazy.nvim`
- **Fuzzy Finder:** `telescope.nvim` 
- **File Explorer:** `oil.nvim`
- **Formatting:** `conform.nvim`
- **LSP & Autocompletion:** `nvim-lspconfig`, `mason.nvim`, `nvim-cmp`
- **Syntax Highlighting:** `nvim-treesitter`
- **UI & Aesthetics:** `lualine.nvim`, `nvim-web-devicons`
- **Git Integration:** `gitsigns.nvim`
- **Project Management:** `project.nvim`
- **Productivity:** `todo-comments.nvim`
- **AI Assistant:** `copilot.lua`, `CopilotChat.nvim`

## 📋 Prerequisites

Ensure you have the following installed before proceeding:

- **Neovim** (>= 0.8.0 recommended)
- **Git**
- **ripgrep** (Required for Telescope `live_grep`)
- **Node.js** (>= 18.x, Required for GitHub Copilot)
- **Nerd Font** (Required for icons to display correctly)

## 🛠️ Installation

1. **Backup your existing configuration** (if applicable):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   mv ~/.local/share/nvim ~/.local/share/nvim.bak
   ```

2. **Clone the repository**:
   ```bash
   git clone <your-repository-url> ~/.config/nvim
   ```

3. **Start Neovim**:
   ```bash
   nvim
   ```
   *`lazy.nvim` will automatically bootstrap and install all configured plugins.*

## ⌨️ Usage & Keybindings

The **Leader Key** is set to `Space`.

### 🔍 Navigation & Search (Telescope & Oil)
| Keys | Action | Plugin |
| ---- | ------ | ------ |
| `<leader>ff` | Find files | Telescope |
| `<leader>fg` | Live grep (search text) | Telescope |
| `<leader>fb` | Find open buffers | Telescope |
| `<leader>fh` | Help tags | Telescope |
| `<leader>fe` | Open file explorer | Oil.nvim |
| `<leader>fp` | Find projects | Project.nvim + Telescope |

**Using Oil.nvim:** When you press `<leader>fe`, it opens the directory as a standard text buffer. You can rename, delete, or move files just by editing the text. Save the buffer (`:w`) to apply the changes to your filesystem!

### ✨ Formatting (Conform)
| Keys | Action | Plugin |
| ---- | ------ | ------ |
| `<leader>f` | Format the current buffer | Conform |
*Note: Files will also automatically format on save using standard formatters like `prettier`, `black`, `gofmt`, etc.*

### 🧠 LSP & Code Intelligence
*These keybindings are active only when a Language Server is attached to the current file.*

| Keys | Action |
| ---- | ------ |
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | Find references |
| `gi` | Go to implementation |
| `K`  | Show hover documentation |
| `<C-k>` | Show signature help |
| `<leader>rn` | Rename symbol globally |
| `<leader>ca` | Open code actions (e.g., auto-import) |

**Using Code Actions (`<leader>ca`):** This is an incredibly powerful feature! Place your cursor on an error, a warning, or an unimported module and press `<leader>ca`. This will open a menu of automatic fixes, refactoring options, and auto-imports provided directly by your language server.

### 🚨 Diagnostics (Errors & Warnings)
| Keys | Action |
| ---- | ------ |
| `<leader>e` | Show full error message in a floating window |
| `[d` | Jump to previous diagnostic |
| `]d` | Jump to next diagnostic |
| `<leader>q` | Open location list (shows all errors in file) |
| `<leader>x` | Close location list |

### 💡 Autocompletion (Nvim-cmp)
| Keys | Action |
| ---- | ------ |
| `<C-Space>` | Manually trigger autocompletion |
| `<CR>` | Confirm selected item (and auto-import if needed) |
| `<Tab>` | Select next item / expand snippet |
| `<S-Tab>` | Select previous item |
| `<C-b> / <C-f>` | Scroll documentation window |

### 🤖 GitHub Copilot
| Keys | Action |
| ---- | ------ |
| `<M-l>` | Accept Copilot suggestion (`Alt` + `l`) |
| `<M-]>` | Next Copilot suggestion (`Alt` + `]`) |
| `<M-[>` | Previous Copilot suggestion (`Alt` + `[`) |
| `<C-]>` | Dismiss Copilot suggestion |
| `<leader>cct` | Toggle Copilot Chat window |
| `<leader>cce` | Ask Copilot to explain selected code (Visual/Normal) |
| `<leader>ccf` | Ask Copilot to fix diagnostic error under cursor |