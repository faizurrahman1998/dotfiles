---@type ChadrcConfig
local M = {}

M.ui = { theme = 'catppuccin', transparency = true }
M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")

vim.api.nvim_set_hl(0, "Visual", {
    fg = "Cyan",
    bg = "Gray",
    bold=true
})

vim.opt.guicursor = "n-c-v:block-nCursor,i-ci:block-iCursor-blinkwait100-blinkon300-blinkoff150"

return M
