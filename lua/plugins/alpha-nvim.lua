-- ~/.config/nvim/lua/alpha-config.lua
local alpha = require('alpha')
local startify = require('alpha.themes.startify')

local opts = {
  layout = {
    { type = "padding", val = 2 },
    startify.section.header,
    startify.section.mru,
    startify.section.top_flat,
    startify.section.bottom,
  },
  opts = {
    margin = 5,
  }
}

alpha.setup(opts)

