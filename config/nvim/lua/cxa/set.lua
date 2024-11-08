local o = vim.opt
local g = vim.g

-- Number
o.nu = true
o.rnu = true

-- Indent
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.smartindent = true

-- Undo
o.undofile = true

-- Text
o.wrap = false
o.scrolloff = 5

-- Search
o.hlsearch = false
o.incsearch = true

-- Leader key
g.mapleader = " "

-- NETRW
g.netrw_banner = 0
g.netrw_liststyle = 3
g.netrw_winsize = 20

-- Color
o.termguicolors = true
vim.cmd[[colorscheme tokyonight-night]]
