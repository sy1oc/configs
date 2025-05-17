-- Search options
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true

-- Numbering
vim.o.number = true
vim.o.relativenumber = true

-- Clipboard integration
vim.o.clipboard = "unnamedplus"  -- Requires xclip on Linux

-- UI options
vim.o.showmode = true
vim.o.showcmd = true
vim.o.encoding = "utf-8"

-- Filetype and indentation
vim.o.autoindent = true

-- Indentation settings
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.tabstop = 4

-- Matching and cursor
vim.o.showmatch = true
vim.wo.cursorline = false
vim.wo.wrap = true
vim.wo.linebreak = true
