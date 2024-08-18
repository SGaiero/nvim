-- ~/.config/nvim/lua/config/snippets.lua

require('luasnip').setup()

-- Opcional: carga snippets adicionales
require('luasnip.loaders.from_vscode').lazy_load()

