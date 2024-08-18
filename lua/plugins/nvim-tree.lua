-- ~/.config/nvim/lua/plugins/nvim-tree.lua
-- ~/.config/nvim/lua/plugins/nvim-tree.lua
require('nvim-tree').setup {
  renderer = {
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = "",  -- Ícono para archivos
        symlink = "",  -- Ícono para enlaces simbólicos
        git = {
          unstaged = "✚",  -- Ícono para cambios no confirmados
          staged = "✓",    -- Ícono para cambios confirmados
          untracked = "★", -- Ícono para archivos no rastreados
          renamed = "➜",   -- Ícono para archivos renombrados
          deleted = "",   -- Ícono para archivos eliminados
          ignored = "◌",   -- Ícono para archivos ignorados
        },
        folder = {
          default = "",  -- Ícono para carpetas por defecto
          open = "",     -- Ícono para carpetas abiertas
          empty = "",    -- Ícono para carpetas vacías
          empty_open = "", -- Ícono para carpetas vacías abiertas
          symlink = "",  -- Ícono para enlaces simbólicos en carpetas
        }
      }
    }
  },
  -- Otras configuraciones
}

-- Mapeos de teclas
vim.api.nvim_set_keymap('n', '<C-Space>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
-- Cambiar el foco entre el árbol y el código con Ctrl + b
vim.api.nvim_set_keymap('n', '<C-b>', ':wincmd p<CR>', { noremap = true, silent = true })
