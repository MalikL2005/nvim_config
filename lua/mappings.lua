require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local api = require("nvim-tree.api")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Go Lang err != nil
map({"n", "i"}, "<C-g>", "<ESC>oif err != nil {<ENTER>}<ESC>O", {desc = "custom: go error is not nil"})

-- display and copy error message
map({"n", "i"}, "<C-e>", "<ESC>:lua vim.diagnostic.open_float()<ENTER>:lua vim.diagnostic.open_float()<ENTER>j", {desc = "custom: hover diagnostics"})

-- on neo tree: cd to parent
map("n", "<leader>P", ":cd ..<ENTER>", {desc = "Neotree: move to parent"})

map("n", "-", api.tree.change_root_to_node, {desc = "custom: Nvim-tree -> cd to selected dir"})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

