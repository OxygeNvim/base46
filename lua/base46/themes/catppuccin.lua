-- original theme: https://github.com/catppuccin/nvim

local M = {}

M.base_30 = {
  white = '#D9E0EE',
  darker_black = '#191828',
  black = '#1E1D2D',
  black2 = '#252434',
  one_bg = '#2d2c3c',
  one_bg2 = '#363545',
  one_bg3 = '#3e3d4d',
  grey = '#474656',
  grey_fg = '#4e4d5d',
  grey_fg2 = '#555464',
  light_grey = '#605f6f',
  red = '#F38BA8',
  baby_pink = '#ffa5c3',
  pink = '#F5C2E7',
  line = '#383747',
  green = '#ABE9B3',
  vibrant_green = '#b6f4be',
  nord_blue = '#8bc2f0',
  blue = '#89B4FA',
  yellow = '#FAE3B0',
  sun = '#ffe9b6',
  purple = '#d0a9e5',
  dark_purple = '#c7a0dc',
  teal = '#B5E8E0',
  orange = '#F8BD96',
  cyan = '#89DCEB',
  lightbg = '#2f2e3e',
  pmenu_bg = '#ABE9B3',
  folder_bg = '#89B4FA',
  lavender = '#c7d1ff',
}

M.base_16 = {
  base00 = '#1E1D2D',
  base01 = '#282737',
  base02 = '#2f2e3e',
  base03 = '#383747',
  base04 = '#414050',
  base05 = '#bfc6d4',
  base06 = '#ccd3e1',
  base07 = '#D9E0EE',
  base08 = '#F38BA8',
  base09 = '#F8BD96',
  base0A = '#FAE3B0',
  base0B = '#ABE9B3',
  base0C = '#89DCEB',
  base0D = '#89B4FA',
  base0E = '#CBA6F7',
  base0F = '#F38BA8',
}

M.syntax = {
  special = M.base_16.base09,
  fn = M.base_16.base0D,
  keyword = M.base_16.base08,
  string = M.base_16.base0B,
  boolean = M.base_16.base09,
  number = M.base_16.base09,
  variable = M.base_16.base07,
  constant = M.base_16.base07,
  parameter = M.base_16.base08,
  type = M.base_16.base0A,
  constructor = M.base_16.base0C,
  property = M.base_16.base0A,
  delimiter = M.base_16.base04,
  bracket = M.base_16.base04,
  tag = M.base_16.base0C,
  error = M.base_16.base08,
}

M.polish_hl = {
  Include = { fg = M.base_16.base0C },
  Conditional = { fg = M.base_16.base0C },
  ['@keyword.return'] = { fg = M.base_16.base0C },
  ['@keyword.export'] = { fg = M.base_16.base0C },
}

M.type = 'dark'

return M
