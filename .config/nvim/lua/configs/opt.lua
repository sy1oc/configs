vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true

vim.o.number = true
vim.o.relativenumber = true

vim.o.clipboard = "unnamedplus" -- Requires xclip on Linux

vim.o.showmode = true
vim.o.showcmd = true
vim.o.encoding = "utf-8"

vim.o.autoindent = true

vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.tabstop = 4

vim.o.showmatch = true
vim.wo.cursorline = false
vim.wo.wrap = true
vim.wo.linebreak = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

--vim.cmd.colorscheme("ferriouscolor")
--vim.cmd.colorscheme("catppuccin")
--vim.cmd.colorscheme("oxocarbon")
vim.cmd.colorscheme("tokyonight")
