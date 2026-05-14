# Neovim Configuration

Personal Neovim configuration managed with [lazy.nvim](https://github.com/folke/lazy.nvim).

## Plugins

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
| AI | `copilot.lua`, `CopilotChat.nvim` |
| UI | `lualine.nvim`, `which-key.nvim`, `indent-blankline.nvim`, `nvim-web-devicons` |
| Productivity | `todo-comments.nvim`, `nvim-autopairs`, `vim-illuminate`, `project.nvim` |

## Prerequisites

- **Neovim** >= 0.9.0
- **Git**
- **ripgrep** — required for Telescope live grep
- **Node.js** >= 18.x — required for GitHub Copilot
- **Nerd Font** — required for icons

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
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | Find references |
| `gi` | Go to implementation |
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
| `<leader>x` | Close location list |

### Completion

| Key | Action |
|-----|--------|
| `<Tab>` | Accept Copilot / next item / expand snippet |
| `<S-Tab>` | Previous item |
| `<CR>` | Confirm selection |
| `<C-Space>` | Trigger completion manually |
| `<C-e>` | Abort completion |
| `<C-b>` / `<C-f>` | Scroll docs |

### Git

| Key | Action | Plugin |
|-----|--------|--------|
| `<leader>gg` | Git status | Neogit |
| `<leader>gd` | Diff view | Diffview |
| `<leader>gh` | File git history | Diffview |

**Neogit quick reference:** `c c` commit · `P p` push · `p p` pull · `r` rebase menu

### Debugger (DAP)

| Key | Action |
|-----|--------|
| `<leader>db` | Toggle breakpoint |
| `<leader>dc` | Continue |
| `<leader>di` | Step into |
| `<leader>do` | Step over |
| `<leader>dO` | Step out |
| `<leader>du` | Toggle DAP UI |

### AI (Copilot)

| Key | Action |
|-----|--------|
| `<Tab>` | Accept inline suggestion (insert mode) |
| `<M-]>` | Next suggestion |
| `<M-[>` | Previous suggestion |
| `<C-]>` | Dismiss suggestion |
| `<leader>cct` | Toggle Copilot Chat |
| `<leader>cce` | Explain selected code |
| `<leader>ccf` | Fix diagnostic under cursor |

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
| `<Esc>` | Clear search highlight + close floats |
