# Neovim Configuration
# 🌟 Neovim Configuration

Personal Neovim configuration managed with [lazy.nvim](https://github.com/folke/lazy.nvim).
A modern, feature-rich Neovim setup built with `lazy.nvim`.

## Plugins
## 🚀 Features
* **Plugin Management:** `lazy.nvim`
* **LSP & Formatting:** Mason, nvim-lspconfig, Conform, nvim-lint
* **Autocompletion:** nvim-cmp, LuaSnip
* **UI & Theming:** Nightfox, Tokyonight, Lualine, Indent Blankline
* **Navigation & File Management:** Telescope, Neo-tree, Oil
* **Git Integration:** Neogit, Gitsigns, Diffview
* **Debugging:** nvim-dap, dap-ui
* **Editor Enhancements:** Treesitter context, Auto-save, Autopairs, Todo-comments, Illuminate

| Category | Plugins |
|----------|---------|
| Plugin Manager | `lazy.nvim` |
| LSP & Completion | `nvim-lspconfig`, `mason.nvim`, `nvim-cmp`, `nvim-lint` |
| Syntax | `nvim-treesitter` |
| Formatting | `conform.nvim` |
| Debugger | `nvim-dap`, `nvim-dap-ui` |
| Fuzzy Finder | `telescope.nvim` |
| File Explorer | `oil.nvim`, `neo-tree.nvim` |
| Git | `gitsigns.nvim`, `neogit`, `diffview.nvim` |
| UI | `lualine.nvim`, `which-key.nvim`, `indent-blankline.nvim`, `nvim-web-devicons` |
| Productivity | `todo-comments.nvim`, `nvim-autopairs`, `vim-illuminate`, `project.nvim` |
## ⌨️ Keybindings

## Prerequisites
**Leader Key:** `Space` (`<leader>`)  
**Local Leader:** `\` (`<localleader>`)  

- **Neovim** >= 0.9.0
- **Git**
- **ripgrep** — required for Telescope live grep
- **Nerd Font** — required for icons
### 📁 File Explorer & Search
| Key | Description |
|-----|-------------|
| `<leader>ff` | Telescope find files |
| `<leader>fg` | Telescope live grep |
| `<leader>fb` | Telescope buffers |
| `<leader>fc` | Telescope colorscheme (with live preview) |
| `<leader>fh` | Telescope help tags |
| `<leader>fp` | Find Projects |
| `<leader>fe` | Open Oil file explorer (buffer editing) |
| `<leader>ft` | Toggle Neo-tree file explorer (sidebar) |

## Installation

```bash
# Backup existing config
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak

# Clone
git clone <your-repository-url> ~/.config/nvim

# Launch — lazy.nvim auto-installs everything
nvim
```

## Keybindings

Leader key: `Space`

### File Navigation

| Key | Action | Plugin |
|-----|--------|--------|
| `<leader>ff` | Find files | Telescope |
| `<leader>fg` | Live grep | Telescope |
| `<leader>fb` | Open buffers | Telescope |
| `<leader>fh` | Help tags | Telescope |
| `<leader>fp` | Find projects | Telescope + project.nvim |
| `<leader>fe` | File explorer (edit-style) | oil.nvim |
| `<leader>ft` | Toggle file tree | Neo-tree |

### LSP

> Active only when a language server is attached.

| Key | Action |
|-----|--------|
### 🛠️ LSP & Diagnostics
| Key | Description |
|-----|-------------|
| `gD` | Go to declaration |
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | Find references |
| `gi` | Go to implementation |
| `gr` | Go to references |
| `K` | Hover documentation |
| `<C-k>` | Signature help |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code actions |

### Diagnostics

| Key | Action |
|-----|--------|
| `<leader>e` | Show diagnostic float |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |
| `<leader>q` | Open location list |
| `<leader>ca` | Code action |
| `<leader>e` | Show diagnostic error messages (float) |
| `[d` / `]d` | Previous / Next diagnostic message |
| `<leader>q` | Open diagnostic quickfix list |
| `<leader>x` | Close location list |
| `<leader>f` | Format buffer (Conform) |

### Completion

| Key | Action |
|-----|--------|
| `<Tab>` | Next item / expand snippet |
| `<S-Tab>` | Previous item |
| `<CR>` | Confirm selection |
| `<C-Space>` | Trigger completion manually |
| `<C-e>` | Abort completion |
| `<C-b>` / `<C-f>` | Scroll docs |
### 🌿 Git
| Key | Description |
|-----|-------------|
| `<leader>gg` | Open Neogit status |
| `<leader>gd` | Open Diffview |
| `<leader>gh` | File Git history (Diffview) |

### Git

| Key | Action | Plugin |
|-----|--------|--------|
| `<leader>gg` | Git status | Neogit |
| `<leader>gd` | Diff view | Diffview |
| `<leader>gh` | File git history | Diffview |
| `<leader>gc` | Close diff view | Diffview |

**Neogit quick reference:** `c c` commit · `P p` push · `p p` pull · `r` rebase menu

### Debugger (DAP)

| Key | Action |
|-----|--------|
### 🐛 Debugging (DAP)
| Key | Description |
|-----|-------------|
| `<leader>db` | Toggle breakpoint |
| `<leader>dc` | Continue |
| `<leader>di` | Step into |
| `<leader>do` | Step over |
| `<leader>dO` | Step out |
| `<leader>dc` | DAP continue |
| `<leader>di` | DAP step into |
| `<leader>do` | DAP step over |
| `<leader>dO` | DAP step out |
| `<leader>du` | Toggle DAP UI |

### ⌨️ Completion (Insert Mode)
| Key | Description |
|-----|-------------|
| `<Tab>` | Select Next Item / Expand Snippet |
| `<S-Tab>` | Select Previous Item |
| `<CR>` | Confirm selection |
| `<C-Space>` | Trigger completion |
| `<C-e>` | Abort completion |
| `<C-b>` / `<C-f>`| Scroll docs up / down |

### 🧹 Utility
| Key | Description |
|-----|-------------|
| `<Esc>` | Clear search highlighting, close open floats, and close Diffview |

### Splits & Tabs

| Key | Action |
|-----|--------|
| `<C-w>v` | Vertical split |
| `<C-w>s` | Horizontal split |
| `<C-w>hjkl` | Navigate splits |
| `gt` / `gT` | Next / previous tab |
| `<C-t>` | Open in new tab (Telescope) |
| `<C-v>` / `<C-x>` | Open in split (Telescope) |

### Utility

| Key | Action |
|-----|--------|
| `<Esc>` | Clear search highlight + close floats + close Diffview |
## ⚙️ Custom Commands
* `:ASToggle` - Toggle Auto-save
* `:MergeTool` - Open Diffview as a merge tool
