-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.o.background = "light"
vim.g.zenbones = { lightness = "bright" }
vim.o.scrolloff = 8
vim.o.rnu = false
vim.o.formatoptions = "cro"

vim.cmd([[
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
]])
