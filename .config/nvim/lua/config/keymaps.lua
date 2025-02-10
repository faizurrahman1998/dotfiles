-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local options = {
    noremap = true,
    silent = true,
}

local map = LazyVim.safe_keymap_set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<CR>", ":noh<CR>", options)
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })

map("n", "<leader>Nff", "<cmd>Neogen file<CR>", { desc = "Generate Doxygen comment of type file." })
map("n", "<leader>Nfn", "<cmd>Neogen func<CR>", { desc = "Generate Doxygen comment of type func." })
map("n", "<leader>Nfc", "<cmd>Neogen class<CR>", { desc = "Generate Doxygen comment of type class" })
