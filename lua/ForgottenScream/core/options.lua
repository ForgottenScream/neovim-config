vim.cmd("let g:netrw_liststyle = 3") -- not working for whatever reason, should make it look like a tree

local opt = vim.opt -- for readability

opt.relativenumber = true -- shows line number relative to where the cursor is
opt.number = true -- shows absolute line number for the buffer

-- tabs & indentation (getting this out of the way)
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for ident width
opt.expandtab = true --expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false --disables line wrapping

--search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- assumes you want case-sensitive if mixxed case in search

-- cursor line

opt.cursorline = true

-- appearance

opt.termguicolors = true --useful for colorschemes to work
opt.background = "dark" --if there is an option, it will be dark.
opt.signcolumn = "yes" --show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allows backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false
