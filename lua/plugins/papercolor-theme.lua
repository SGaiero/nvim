-- ~/.config/nvim/lua/plugins/theme.lua

-- Configuración para el tema PaperColor
return {
    'NLKNguyen/papercolor-theme',
    config = function()
        vim.cmd([[colorscheme PaperColor]])
    end,
}

