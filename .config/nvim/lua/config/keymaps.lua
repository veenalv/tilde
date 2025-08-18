-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set
map("n", "<leader>go", ":GitBlameOpenFileURL<CR>", { desc = "Open File URL in Gitlab" })
map("n", "<leader>md", ":MarkdownPreview<CR>", { desc = "Markdown Preview" })
