local k = vim.keymap

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

k.set("v", "J", ":m '>+1<CR>gv=gv")
k.set("v", "K", ":m '<-2<CR>gv=gv")

-- better search
k.set("n", "n", "nzzzv")
k.set("n", "N", "Nzzzv")

-- window management (just keynotes for now)
-- Ctrl-w v -> vertical split
-- Crtl-w s -> horizontal split
-- Ctrl-w = -> equal size
-- :close -> close window
k.set("n", "<C-right>", ":vertical resize +5<cr>")
k.set("n", "<C-left>", ":vertical resize -5<cr>")
k.set("n", "<C-up>", ":resize +5<cr>")
k.set("n", "<C-down>", ":resize -5<cr>")

-- This can be used as an alternative to the plugin vim tmux navigator
--k.set("n", "<C-h>", ":wincmd h<CR>")
--k.set("n", "<C-j>", ":wincmd j<CR>")
--k.set("n", "<C-k>", ":wincmd k<CR>")
--k.set("n", "<C-l>", ":wincmd l<CR>")

-- scrolling
k.set("n", "<C-d>", "<C-d>zz")
k.set("n", "<C-u>", "<C-u>zz")

k.set("n", "L", ":tabn<CR>")
k.set("n", "H", ":tabp<CR>")

k.set("n", "<leader>h", ":nohlsearch<CR>")

k.set("n", "<C-s>", ":w<cr>")

k.set("n", "<leader>ll", ":Lazy<CR>")
