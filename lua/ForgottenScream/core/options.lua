vim.cmd("let g:netrw_liststyle = 3") -- Not working for whatever reason, should make it look like a tree

local opt = vim.opt -- for readability

opt.relativenumber = true -- Shows line number relative to where the cursor is
opt.number = true -- Shows absolute line number for the buffer

-- Tabs & indentation (getting this out of the way)
opt.tabstop = 4 -- 4 spaces for tabs
opt.shiftwidth = 4 -- 4 spaces for indent width
opt.expandtab = true --expand tab to spaces
opt.autoindent = true -- Copy indent from current line when starting new one

opt.wrap = false --disables line wrapping

-- Java specific settings
vim.api.nvim_create_autocmd("FileType", {
	pattern = "java",
	callback = function()
		vim.opt_local.tabstop = 4
		vim.opt_local.shiftwidth = 4
		vim.opt_local.expandtab = true
	end,
})
--search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- Assumes you want case-sensitive if mixed case in search

-- cursor line

opt.cursorline = true

-- appearance

opt.termguicolors = true --Useful for color schemes to work
opt.background = "dark" --If there is an option, it will be dark.
opt.signcolumn = "yes" --Show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- Allows backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- Use system clipboard as default register

-- split windows
opt.splitright = true -- Split vertical window to the right
opt.splitbelow = true -- Split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false
