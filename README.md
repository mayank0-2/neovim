# Neovim Configuration

This is my personal Neovim configuration, bootstrapped and managed with [lazy.nvim](https://github.com/folke/lazy.nvim).

## 🚀 Features

- **Plugin Manager**: `lazy.nvim` for fast startup and lazy-loading.
- **Fuzzy Finder**: `telescope.nvim` for quickly finding files, live grepping, buffers, and help tags.
- **Statusline**: `lualine.nvim` configured with an auto-updating theme.
- **Icons**: `nvim-web-devicons` for filetype icons.

## 📋 Prerequisites

- **Neovim** (>= 0.8.0 recommended)
- **Git**
- **ripgrep** (Required for Telescope `live_grep`)
- **Nerd Font** (Required for icons to display correctly in Lualine and Telescope)

## 🛠️ Installation

Backup any existing configuration and clone this repository:

    mv ~/.config/nvim ~/.config/nvim.bak
    git clone <your-repository-url> ~/.config/nvim