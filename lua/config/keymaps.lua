-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Enable Emacs-style keybindings in insert mode
vim.api.nvim_set_keymap("i", "<C-e>", "<End>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-a>", "<Home>", { noremap = true })
vim.keymap.set("n", "<leader>w", ":w<cr>", {})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.g.tmux_navigator_no_mappings = 1

vim.keymap.set({ "n", "t" }, "<A-h>", "<CMD>NavigatorLeft<CR>")
vim.keymap.set({ "n", "t" }, "<A-l>", "<CMD>NavigatorRight<CR>")
vim.keymap.set({ "n", "t" }, "<A-k>", "<CMD>NavigatorUp<CR>")
vim.keymap.set({ "n", "t" }, "<A-j>", "<CMD>NavigatorDown<CR>")
vim.keymap.set({ "n", "t" }, "<A-p>", "<CMD>NavigatorPrevious<CR>")
