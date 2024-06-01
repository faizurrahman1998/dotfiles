local opts = {
  noremap = true,
  silent = true
}

local keymap = vim.api.nvim_set_keymap

keymap("i", "jk", "<ESC>", opts)
keymap("n", "<CR>", ":noh<CR>", opts)
