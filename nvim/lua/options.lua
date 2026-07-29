local o = vim.o
local g = vim.g

o.number = true
o.cursorline = true
o.wrap = true
vim.opt.showmatch = false

-- tabs options
local stabn = 2
local tabn = 8
o.tabstop = tabn
o.softtabstop = stabn
o.shiftwidth = stabn
o.expandtab = true

o.autoindent = true
o.smartindent = false
o.cindent = false
o.indentexpr = ""
vim.cmd("filetype indent off")

o.clipboard = "unnamedplus"

o.list = true
o.listchars = "tab:~~>,trail:_"

g.c_syntax_for_h = 1

