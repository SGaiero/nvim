vim.cmd("colorscheme onedark")
vim.o.background = "light"
vim.cmd([[
  command! ArduinoCompile :!arduino-cli compile --fqbn esp8266:esp8266:generic %:p:h
  command! ArduinoUpload :!arduino-cli upload -p /dev/ttyUSB0 --fqbn esp8266:esp8266:generic %:p:h
  command! ArduinoBuildAndUpload :ArduinoCompile | ArduinoUpload
]])

-- Mover línea hacia abajo con Alt + j
vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })
-- Mover línea hacia arriba con Alt + k
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })

-- Mover líneas seleccionadas hacia abajo en modo visual con Alt + j
vim.api.nvim_set_keymap('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
-- Mover líneas seleccionadas hacia arriba en modo visual con Alt + k
vim.api.nvim_set_keymap('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })


vim.opt.syntax = 'enable' -- Habilita el resaltado de sintaxis
vim.opt.filetype.plugin = true -- Habilita la detección de tipo de archivo para plugins
vim.opt.filetype.indent = true -- Habilita la detección de tipo de archivo para sangrado
vim.opt.number = true -- Muestra los números de línea
vim.opt.relativenumber = false -- Muestra los números relativos
vim.opt.tabstop = 2 -- Establece el ancho de tabulación en 2 espacios
vim.opt.shiftwidth = 2 -- Establece el ancho de desplazamiento en 2 espacios
vim.opt.expandtab = true -- Usa espacios en lugar de tabulaciones
vim.opt.autoindent = true -- Habilita el autoindentado
vim.opt.smartindent = true -- Habilita el smartindent
-- para mejorar los colroes 
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"
--el cursor siempre queda con 8 espacios para arriba y para abajo
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
