return {
  'stevearc/vim-arduino',
  ft = {'arduino', 'ino'},
  config = function()
    vim.g.arduino_use_libraries = 1
    vim.g.arduino_cli = 'arduino-cli'
  end,
}

