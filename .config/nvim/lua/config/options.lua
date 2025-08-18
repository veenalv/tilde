-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

local opt = vim.opt
-- o.cursorlineopt ='both' -- to enable cursorline!
--o.completeopt = "menu,menuone"

-- set relative number to false
opt.relativenumber = false

-- map vim leader key to " "
vim.g.mapleader = " "

-- map vim local leader key to " "
vim.g.maplocalleader = " "

opt.tabstop = 4
opt.expandtab = true
opt.softtabstop = 0
opt.shiftwidth = 4

-- for gitlab.nvim omni func?
vim.o.completeopt = "menu,menuone"
