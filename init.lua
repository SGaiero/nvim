local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- Última versión estable
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  --Theme gruvbox :)
	{"morhetz/gruvbox"},
  --Tener los archivos y carpetas a la izquierda
  {
    "kyazdani42/nvim-web-devicons",
    -- No necesitas configuración adicional en la mayoría de los casos
  },
  { "kyazdani42/nvim-tree.lua",
    dependencies = { "kyazdani42/nvim-web-devicons" },
    config = function()
      require'nvim-tree'.setup {
        -- Configuración de nvim-tree aquí
      }
    end 
  }, 
   { 'goolord/alpha-nvim', config = function() require('alpha').setup(require('alpha.themes.startify').config) end },
   {'nvim-lualine/lualine.nvim', dependencies = {"kyazdani42/nvim-web-devicons"}},
})

require("config.set")
require("config.plugins")

