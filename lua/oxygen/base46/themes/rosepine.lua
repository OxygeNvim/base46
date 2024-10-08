-- original theme: https://github.com/rose-pine/rose-pine-theme

local M = {}

M.base_30 = {
  black = '#191724',
  darker_black = '#13111e',
  white = '#e0def4',
  black2 = '#1f1d2a',
  grey = '#3f3d4a',
  grey_fg = '#474552',
  light_grey = '#5d5b68',
  red = '#eb6f92',
  baby_pink = '#f5799c',
  pink = '#ff83a6',
  line = '#2e2c39',
  green = '#ABE9B3',
  vibrant_green = '#b5f3bd',
  nord_blue = '#86b9c2',
  blue = '#8bbec7',
  yellow = '#f6c177',
  sun = '#fec97f',
  purple = '#c4a7e7',
  dark_purple = '#bb9ede',
  teal = '#6aadc8',
  orange = '#f6c177',
  cyan = '#a3d6df',
  pmenu_bg = '#c4a7e7',
  folder_bg = '#6aadc8',
}

M.base_16 = {
  base00 = '#191724',
  base01 = '#1f1d2e',
  base02 = '#403d52',
  base03 = '#6e6a86',
  base04 = '#908caa',
  base05 = '#e0def4',
  base06 = '#cecacd',
  base07 = '#fffaf3',
  base08 = '#e2e1e7',
  base09 = '#eb6f92',
  base0A = '#f6c177',
  base0B = '#ebbcba',
  base0C = '#4d90ab',
  base0D = '#93c6cf',
  base0E = '#c4a7e7',
  base0F = '#e5e5e5',
}

M.syntax = {
  special = M.base_16.base09,
  fn = M.base_16.base0B,
  method = M.base_16.base0B,
  null = M.base_16.base0D,
  keyword = M.base_16.base0C,
  string = M.base_16.base0A,
  boolean = M.base_16.base0B,
  number = M.base_16.base0B,
  variable = M.base_16.base05,
  constant = M.base_16.base05,
  parameter = M.base_16.base0E,
  type = M.base_16.base0D,
  constructor = M.base_16.base0D,
  property = M.base_16.base0E,
  field = M.base_16.base05,
  operator = M.base_16.base04,
  attribute = M.base_16.base0E,
  tag = M.base_16.base0D,
  error = M.base_16.base09,
}

M.polish_hl = {
  C_InsertMode = { bg = M.base_30.orange, fg = M.base_30.black, bold = true },
  C_InsertModeSeparator = { fg = M.base_30.orange, bg = M.base_30.darker_black },
}

M.type = 'dark'

return M
