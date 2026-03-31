# Neovim Configuration

This is my personal Neovim configuration, bootstrapped and managed with [lazy.nvim](https://github.com/folke/lazy.nvim).
A structured and modular Neovim configuration built with [lazy.nvim](https://github.com/folke/lazy.nvim).

## 🚀 Features

- **Plugin Manager**: `lazy.nvim` for fast startup and lazy-loading.
- **Fuzzy Finder**: `telescope.nvim` for quickly finding files, live grepping, buffers, and help tags.
- **Statusline**: `lualine.nvim` configured with an auto-updating theme.
- **Icons**: `nvim-web-devicons` for filetype icons.
- **Plugin Management:** `lazy.nvim` for fast startup and lazy-loading.
- **Fuzzy Finder:** `telescope.nvim` for finding files, grepping, and more.
- **File Explorer:** `oil.nvim` for editing your filesystem like a normal Neovim buffer.
- **Formatting:** `conform.nvim` for seamless code formatting.
- **UI & Aesthetics:** `lualine.nvim` statusline and `nvim-web-devicons`.
- **Git Integration:** `gitsigns.nvim` for git diffs in the sign column.
- **Project Management:** Automatic working directory management with `project.nvim`.
- **Syntax Highlighting:** Enhanced parsing and highlighting with `nvim-treesitter`.
- **Productivity:** Highlight and search for TODOs with `todo-comments.nvim`.

## 📋 Prerequisites

Ensure you have the following installed before proceeding:

- **Neovim** (>= 0.8.0 recommended)
- **Git**
- **ripgrep** (Required for Telescope `live_grep`)
- **Nerd Font** (Required for icons to display correctly in Lualine and Telescope)
- **Nerd Font** (Required for icons to display correctly)

## 🛠️ Installation

Backup any existing configuration and clone this repository:
1. **Backup your existing configuration** (if applicable):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   mv ~/.local/share/nvim ~/.local/share/nvim.bak
   ```

    mv ~/.config/nvim ~/.config/nvim.bak
    git clone <your-repository-url> ~/.config/nvim
2. **Clone the repository**:
   ```bash
   git clone <your-repository-url> ~/.config/nvim
   ```

3. **Start Neovim**:
   ```bash
   nvim
   ```
   *`lazy.nvim` will automatically bootstrap and install all configured plugins.*