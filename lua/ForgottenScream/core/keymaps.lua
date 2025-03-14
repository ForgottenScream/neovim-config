vim.g.mapleader = " "

local keymap = vim.keymap -- for readability

keymap.set("i", "ne", "<ESC>", {desc = "Exit insert mode with ne"})
