# 🌟 Neovim Configuration

A modern, feature-rich personal Neovim setup managed with [lazy.nvim](https://github.com/folke/lazy.nvim).

## 🚀 Features

* **Plugin Management:** `lazy.nvim`
* **LSP & Formatting:** Mason, nvim-lspconfig, Conform, nvim-lint
* **Autocompletion:** nvim-cmp, LuaSnip
* **UI & Theming:** Nightfox, Tokyonight, Lualine, Indent Blankline
* **Navigation & File Management:** Telescope, Neo-tree, Oil, Harpoon
* **Git Integration:** Neogit, Gitsigns, Diffview
* **Debugging:** nvim-dap, nvim-dap-ui
* **Editor Enhancements:** Treesitter context, Auto-save, Autopairs, Todo-comments, Illuminate

| Category | Plugins |
|----------|---------|
| Plugin Manager | `lazy.nvim` |
| LSP & Completion | `nvim-lspconfig`, `mason.nvim`, `mason-lspconfig.nvim`, `nvim-cmp`, `nvim-lint` |
| Syntax | `nvim-treesitter` |
| Formatting | `conform.nvim` |
| Debugger | `nvim-dap`, `nvim-dap-ui` |
| Fuzzy Finder | `telescope.nvim` |
| File Explorer | `oil.nvim`, `neo-tree.nvim` |
| Navigation | `harpoon` |
| Git | `gitsigns.nvim`, `neogit`, `diffview.nvim` |
| UI | `lualine.nvim`, `which-key.nvim`, `indent-blankline.nvim`, `nvim-web-devicons` |
| Productivity | `todo-comments.nvim`, `nvim-autopairs`, `vim-illuminate`, `project.nvim` |

## 📋 Prerequisites

- **Neovim** >= 0.11 (uses the `vim.lsp.config()` API)
- **Git**
- **ripgrep** — required for Telescope live grep
- **Nerd Font** — required for icons

## 📦 Installation

```bash
# Backup existing config
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak

# Clone
git clone <your-repository-url> ~/.config/nvim

# Launch — lazy.nvim auto-installs everything
nvim
```

## ⌨️ Keybindings

**Leader:** `Space` (`<leader>`) · **Local Leader:** `\` (`<localleader>`)

### 📁 File Explorer & Search

| Key | Description |
|-----|-------------|
| `<leader>ff` | Telescope find files |
| `<leader>fg` | Telescope live grep |
| `<leader>fb` | Telescope buffers |
| `<leader>fc` | Telescope colorscheme (with live preview) |
| `<leader>fh` | Telescope help tags |
| `<leader>fp` | Find projects (project.nvim) |
| `<leader>fe` | Open Oil file explorer (buffer editing) |
| `<leader>ft` | Toggle Neo-tree file explorer (sidebar) |

### 🛠️ LSP

> Active only when a language server is attached. Navigation (`gd`/`gi`/`gr`/`gy`)
> opens a searchable, previewable Telescope picker.

| Key | Description |
|-----|-------------|
| `gd` | Go to definition (Telescope) |
| `gi` | Go to implementation (Telescope) |
| `gr` | References (Telescope) |
| `gy` | Go to type definition (Telescope) |
| `gD` | Go to declaration |
| `K` | Hover documentation |
| `<C-k>` | Signature help |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code actions |

### 🩺 Diagnostics & Formatting

| Key | Description |
|-----|-------------|
| `<leader>e` | Show diagnostic error messages (float) |
| `[d` / `]d` | Previous / next diagnostic |
| `<leader>q` | Open diagnostic location list |
| `<leader>x` | Close location list |
| `<leader>f` | Format buffer (Conform) |

### 🌿 Git

| Key | Description |
|-----|-------------|
| `<leader>gg` | Open Neogit status |
| `<leader>gd` | Open Diffview |
| `<leader>gh` | File Git history (Diffview) |

**Neogit quick reference:** `c c` commit · `P p` push · `p p` pull · `r` rebase menu

### 🪝 Harpoon

| Key | Description |
|-----|-------------|
| `<leader>a` | Add current file to Harpoon list |
| `<C-e>` | Toggle Harpoon quick menu |
| `<leader>1`–`<leader>4` | Jump to Harpoon file 1–4 |

### 🐛 Debugging (DAP)

| Key | Description |
|-----|-------------|
| `<leader>db` | Toggle breakpoint |
| `<leader>dc` | Continue |
| `<leader>di` | Step into |
| `<leader>do` | Step over |
| `<leader>dO` | Step out |
| `<leader>du` | Toggle DAP UI |

### ⌨️ Completion (Insert Mode)

| Key | Description |
|-----|-------------|
| `<Tab>` | Select next item / expand snippet |
| `<S-Tab>` | Select previous item |
| `<CR>` | Confirm selection |
| `<C-Space>` | Trigger completion |
| `<C-e>` | Abort completion |
| `<C-b>` / `<C-f>` | Scroll docs up / down |

### 🪟 Splits & Tabs

| Key | Description |
|-----|-------------|
| `<C-w>v` | Vertical split |
| `<C-w>s` | Horizontal split |
| `<C-w>hjkl` | Navigate splits |
| `gt` / `gT` | Next / previous tab |
| `<C-t>` | Open in new tab (Telescope) |
| `<C-v>` / `<C-x>` | Open in vertical / horizontal split (Telescope) |

### 🧹 Utility

| Key | Description |
|-----|-------------|
| `<Esc>` | Clear search highlighting, close open floats, and close Diffview |

## ⚙️ Custom Commands

* `:ASToggle` — Toggle Auto-save
* `:MergeTool` — Open Diffview as a merge tool
