-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }

-- move highlights up and down
vim.keymap.set("v", "<pagedown>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<pageup>", ":m '<-2<CR>gv=gv")

-- keep cursor positon when folding lines
vim.keymap.set("n", "J", "mzJ`z")

-- use leader + arrows to move windows
vim.keymap.set("n", "<leader><left>", "<C-w>h", opts)
vim.keymap.set("n", "<leader><down>", "<C-w>j", opts)
vim.keymap.set("n", "<leader><up>", "<C-w>k", opts)
vim.keymap.set("n", "<leader><right>", "<C-w>l", opts)

-- stay in visual mode when indenting
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- intuitive increment/decrement
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

-- select all lines in a file
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- "move" buffers
vim.keymap.set("n", "<leader>m", "<cmd>BufferLinePick<cr>")

-- TODO: Make this work
-- use alt + arrows to resize splits
-- vim.keymap.set("n", "<A-Left>", "<C-Left>")
