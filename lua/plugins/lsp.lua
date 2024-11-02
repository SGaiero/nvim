-- ~/.config/nvim/lua/config/lsp.lua

local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Configuración para clangd (c)
lspconfig.clangd.setup {
  capabilities = capabilities,
}

lspconfig.pyright.setup{
  capabilities = capabilities, 
}

