vim.o.encoding = "utf-8"
vim.o.updatetime = 300
vim.o.hidden = true
vim.o.showmode = true
vim.o.cmdheight = 1
vim.o.expandtab = true
vim.o.showtabline = 2
vim.o.background = "dark"
vim.o.mouse = "a"
vim.g.mapleader = " "

-- Setting searching options
vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.smartindent = true
vim.o.hlsearch = false

-- Setting Window Options
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.wrap = false
vim.wo.cursorline = false

-- Setting tabstops
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- Disable swapfile and backup
vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false

-- Adding undo-file
vim.o.undofile = true
vim.o.termguicolors = true
vim.o.completeopt = "menuone,noselect"

vim.cmd [[set undodir=$HOME/.undodir]]

-- Loading Default Keymappings
require("Conf/DefaultKeymaps")
