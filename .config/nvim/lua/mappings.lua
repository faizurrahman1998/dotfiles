require "nvchad.mappings"

-- add yours here
local options = {
  noremap = true,
  silent = true
}

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<CR>", ":noh<CR>", options)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
