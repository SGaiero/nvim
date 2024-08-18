-- ~/.config/nvim/lua/plugins/lualine.lua

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox', -- Cambia esto por el tema que prefieras
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    always_divide_middle = true, -- Asegura que haya separación en el medio
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename', { 'filesize', icon = '📄' }}, -- Agrega tamaño de archivo con ícono
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {'fugitive', 'nvim-tree'}, -- Agrega extensiones según tus necesidades
}

