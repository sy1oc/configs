vim.g.mapleader = " "

vim.keymap.set("", "<leader>q", ":q!<CR>")
vim.keymap.set("", "<leader>w", ":w<CR>")
vim.keymap.set("", "<leader>f", ":wq<CR>")
-- vim.keymap.set('', '<leader>z', ':CellularAutomaton make_it_rain<CR>')
vim.keymap.set("", "<leader>l", ":Lazy<CR>")

vim.keymap.set("", "<leader>j", ":nohl<CR>")
vim.keymap.set("", "n", "h")
vim.keymap.set("", "e", "jzz")
vim.keymap.set("", "i", "kzz")
vim.keymap.set("", "o", "l")
vim.keymap.set("", "h", "i")
vim.keymap.set("", "k", "ezz")
vim.keymap.set("", "j", "nzz")
vim.keymap.set("", "l", "o")

vim.keymap.set("", "N", "25h")
vim.keymap.set("", "E", "25jzz")
vim.keymap.set("", "I", "25kzz")
vim.keymap.set("", "O", "25l")
vim.keymap.set("", "H", "I")
vim.keymap.set("", "K", "Ezz")
vim.keymap.set("", "J", "Nzz")
vim.keymap.set("", "L", "O")

vim.keymap.set("", "w", "wzz")
vim.keymap.set("", "b", "bzz")
vim.keymap.set("", "W", "Wzz")
vim.keymap.set("", "B", "Bzz")

vim.cmd("nohl")
