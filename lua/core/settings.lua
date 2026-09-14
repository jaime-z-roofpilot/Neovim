-- lua/core/settings.lua

-- ─[ Leader and Env Setup ]────────────────────────────
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.molten_image_provider = "image.nvim"

-- NOTE (JAIME): Remember to install `ripgrep` and `fd` via Chocolatey:
-- choco install ripgrep fd

vim.g.copilot_proxy_strict_ssl = false
-- vim.g.copilot_node_command = 'C:\\Program Files\\nodejs\\node.exe'
-- vim.g.copilot_workspace_folders = { "C:\\Users\\jzamora1\\Documents\\Spring" }

vim.fn.setenv("NODE_TLS_REJECT_UNAUTHORIZED", "0")

-- ─[ General Neovim Options ]──────────────────────────
vim.o.hlsearch        = false
vim.wo.relativenumber = true
vim.o.mouse           = 'a'
vim.o.clipboard       = 'unnamedplus'

-- WSL: the Windows clipboard hands back CRLF, strip \r on paste so buffers don't get ^M
vim.g.clipboard = {
  name = 'wl-clipboard (strip CR)',
  copy = {
    ['+'] = { 'wl-copy', '--type', 'text/plain' },
    ['*'] = { 'wl-copy', '--primary', '--type', 'text/plain' },
  },
  paste = {
    ['+'] = { 'sh', '-c', "wl-paste --no-newline | tr -d '\\r'" },
    ['*'] = { 'sh', '-c', "wl-paste --no-newline --primary | tr -d '\\r'" },
  },
  cache_enabled = 0,
}
vim.o.breakindent     = true
vim.o.undofile        = true
vim.o.ignorecase      = true
vim.o.smartcase       = true
vim.wo.signcolumn     = 'yes'
vim.o.updatetime      = 250
vim.o.timeoutlen      = 300
vim.o.completeopt     = 'menuone,noselect'
vim.o.termguicolors   = true
