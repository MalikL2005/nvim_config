require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- Go Lang err != nil
map({"n", "i"}, "<C-g>", "<ESC>oif err != nil {<ENTER>}<ESC>O")

-- display and copy error message
map({"n", "i"}, "<C-e>", "<ESC>:lua vim.diagnostic.open_float()<ENTER>:lua vim.diagnostic.open_float()<ENTER>jyy")


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
