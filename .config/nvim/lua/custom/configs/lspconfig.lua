local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.clangd.setup {
  on_attach = function(client, buffnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, buffnr)
  end,
  capabilities = capabilities,
}

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},

})
