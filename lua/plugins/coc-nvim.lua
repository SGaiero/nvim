-- ~/.config/nvim/lua/plugins/coc.lua

-- Configuración básica para CoC
vim.api.nvim_set_keymap('i', '<C-Space>', 'coc#refresh()', { silent = true, expr = true })

-- Mapeo para ver las acciones de código (formato, importar, etc.)
vim.api.nvim_set_keymap('n', '<leader>a', '<Plug>(coc-codeaction)', { silent = true })

-- Mapeo para diagnosticar errores
vim.api.nvim_set_keymap('n', '<leader>d', '<Plug>(coc-diagnostic)', { silent = true })

-- Habilitar formato automático para archivos C al guardar
vim.cmd([[
  autocmd BufWritePre *.c,*.h :CocCommand editor.action.formatDocument
]])

-- Opciones adicionales (puedes añadir más mapeos y configuraciones)
vim.cmd([[
  " Usa [g para ir al error o advertencia anterior
  nmap <silent> [g <Plug>(coc-diagnostic-prev)

  " Usa ]g para ir al error o advertencia siguiente
  nmap <silent> ]g <Plug>(coc-diagnostic-next)
]])

