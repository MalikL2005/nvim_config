require "nvchad.options"

-- add yours here!

local opt = vim.opt
local o = vim.o
-- local g = vim.g

opt.relativenumber = true
opt.shiftwidth = 4
opt.tabstop = 4
--
-- cursorLine
o.cursorlineopt ='both'
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#363651"})
-- give cursor the same color as the mode it´s in
-- local mode = vim.api.nvim_get_mode().mode -- Todo: make mode_color dynamic -> get mode on statusline
local mode_color = {
    n = "#6cbeff",
    i = "#fd98b9",
}

vim.api.nvim_set_hl(0, "CursorNormal", { bg = mode_color["n"], fg = "#000000" })
vim.api.nvim_set_hl(0, "CursorInsert", { bg = mode_color["i"], fg = "#000000" })
vim.api.nvim_set_hl(0, "CursorVisual", { bg = "#363651" })
opt.guicursor = "n:block-CursorNormal,"..
                "i:block-CursorInsert,"..
                "v:block-CursorVisual"

