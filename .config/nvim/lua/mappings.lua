require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

local options = {
    noremap = true,
    silent = true,
}

map("i", "jk", "<ESC>")
map("n", "<CR>", ":noh<CR>", options)

-- neogen keymaps
map("n", "<leader>Nff", "<cmd>Neogen file<CR>", { desc = "Generate Doxygen comment of type file." })
map("n", "<leader>Nfn", "<cmd>Neogen func<CR>", { desc = "Generate Doxygen comment of type func." })
map("n", "<leader>Nfc", "<cmd>Neogen class<CR>", { desc = "Generate Doxygen comment of type class" })
