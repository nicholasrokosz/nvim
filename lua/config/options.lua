-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.o.background = "light"
vim.g.zenbones = { lightness = "bright", transparent_background = true }
vim.o.scrolloff = 8
vim.o.rnu = false
vim.o.formatoptions = "cro"

vim.cmd([[
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
]])

-- Neovide specific options
vim.g.neovide_cursor_animate_command_line = false
vim.g.neovide_padding_top = 25
vim.g.neovide_padding_right = 25
vim.g.neovide_fullscreen = true
vim.g.neovide_cursor_animation_length = 0.06

vim.filetype.add({ extension = { templ = "templ" } })
