-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.snacks_animate = false
vim.g.ai_cmp = false

vim.api.nvim_set_hl(0, "Visual", {
    fg = "Cyan",
    bg = "Gray",
    bold = true,
})

vim.opt.guicursor = "n-c-v:block-nCursor,i-ci:block-iCursor-blinkwait100-blinkon300-blinkoff150"
vim.o.tabstop = 4
vim.o.shiftwidth = 4
