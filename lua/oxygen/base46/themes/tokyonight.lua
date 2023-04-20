-- original theme: https://github.com/folke/tokyonight.nvim

local M = {}

M.base_30 = {
  white = '#c0caf5',
  darker_black = '#1f2335',
  black = '#24283b',
  black2 = '#292e42',
  grey = '#40486a',
  grey_fg = '#565f89',
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
  method = M.base_16.base0D,
  null = M.base_16.base09,
  keyword = M.base_30.dark_purple,
  string = M.base_16.base0B,
  boolean = M.base_16.base09,
  number = M.base_16.base09,
  variable = M.base_16.base05,
  constant = M.base_16.base09,
  parameter = M.base_16.base0A,
  type = M.base_16.base0C,
  constructor = M.base_16.base0D,
  property = M.base_30.vibrant_green,
  field = M.base_30.vibrant_green,
  operator = M.base_16.base05,
  attribute = M.base_16.base0D,
  tag = M.base_16.base0D,
  error = M.base_16.base08,
}

M.polish_hl = {
  Include = { fg = M.base_30.cyan },
}

M.type = 'dark'

return M
