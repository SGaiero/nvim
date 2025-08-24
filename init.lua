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
  {'ishan9299/nvim-solarized-lua'}, 
  {'NLKNguyen/papercolor-theme'},
  {'rakr/vim-one'}, 
  {'navarasu/onedark.nvim'},
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
   {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'onsails/lspkind.nvim', 
    },
  },

  -- Configuración del servidor LSP (clangd)
  {
    'neovim/nvim-lspconfig',
  },

  -- Opcional: snippets
  {
    'L3MON4D3/LuaSnip',
    dependencies = {
      'rafamadriz/friendly-snippets',
    },
  },
  {'windwp/nvim-autopairs', event = "InsertEnter"}, 
  {'stevearc/vim-arduino'},
  {'neoclide/coc.nvim', branch = 'release'}
})


require("config.set")
require("config.plugins")
require("config.keymaps")
