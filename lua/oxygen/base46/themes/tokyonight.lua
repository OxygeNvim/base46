-- original theme: https://github.com/folke/tokyonight.nvim

local M = {}

M.base_30 = {
  white = '#c0caf5',
  darker_black = '#16161e',
  black = '#1a1b26',
  black2 = '#1f2336',
  one_bg = '#24283b',
  one_bg2 = '#414868',
  one_bg3 = '#353b45',
  grey = '#40486a',
  grey_fg = '#565f89',
  grey_fg2 = '#4f5779',
  light_grey = '#545c7e',
  red = '#f7768e',
  baby_pink = '#DE8C92',
  pink = '#ff75a0',
  line = '#32333e',
  green = '#9ece6a',
  vibrant_green = '#73daca',
  nord_blue = '#80a8fd',
  blue = '#7aa2f7',
  yellow = '#e0af68',
  sun = '#EBCB8B',
  purple = '#bb9af7',
  dark_purple = '#9d7cd8',
  teal = '#1abc9c',
  orange = '#ff9e64',
  cyan = '#7dcfff',
  lightbg = '#32333e',
  pmenu_bg = '#7aa2f7',
  folder_bg = '#7aa2f7',
}

M.base_16 = {
  base00 = '#1A1B26',
  base01 = '#3b4261',
  base02 = '#3b4261',
  base03 = '#545c7e',
  base04 = '#565c64',
  base05 = '#a9b1d6',
  base06 = '#bbc5f0',
  base07 = '#c0caf5',
  base08 = '#f7768e',
  base09 = '#ff9e64',
  base0A = '#ffd089',
  base0B = '#9ece6a',
  base0C = '#2ac3de',
  base0D = '#7aa2f7',
  base0E = '#bb9af7',
  base0F = '#c0caf5',
}

M.syntax = {
  special = M.base_16.base08,
  fn = M.base_16.base0D,
  keyword = M.base_30.dark_purple,
  string = M.base_16.base0B,
  boolean = M.base_16.base09,
  number = M.base_16.base09,
  variable = M.base_16.base05,
  constant = M.base_16.base09,
  parameter = M.base_16.base0A,
  type = M.base_16.base0C,
  constructor = M.base_16.base0D,
  property = M.base_16.base0B,
  field = M.base_16.base0B,
  operator = M.base_16.base05,
  tag = M.base_16.base0D,
  error = M.base_16.base08,
}

M.type = 'dark'

return M
