-- vim: ft=lua

stds.nvim = {
  globals = {
    'vim',
    'base46_config',
    'base46_colors',
  },
  read_globals = {
    'os',
    'vim',
  },
}

std = 'lua51+nvim'

self = false

cache = true

ignore = {
  '600',
}
