vim.api.nvim_set_keymap('n', '<Esc>[v', 'vll', { noremap = true, silent = true })

-- Mover línea hacia abajo con Alt + j
vim.api.nvim_set_keymap('n', '<D-j>', ':m .+1<CR>==', { noremap = true, silent = true })
-- Mover línea hacia arriba con Alt + k
vim.api.nvim_set_keymap('n', '<D-k>', ':m .-2<CR>==', { noremap = true, silent = true })

-- Mover líneas seleccionadas hacia abajo en modo visual con Alt + j
vim.api.nvim_set_keymap('v', '<D-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
-- Mover líneas seleccionadas hacia arriba en modo visual con Alt + k
vim.api.nvim_set_keymap('v', '<D-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })



