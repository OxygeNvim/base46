-- original theme: https://github.com/joshdick/onedark.vim

local M = {}

M.base_30 = {
  white = '#abb2bf',
  darker_black = '#1b1f27',
  black = '#1e222a',
  black2 = '#252931',
  one_bg = '#282c34',
  one_bg2 = '#353b45',
  one_bg3 = '#373b43',
  grey = '#42464e',
  grey_fg = '#565c64',
  grey_fg2 = '#6f737b',
  light_grey = '#6f737b',
  red = '#e06c75',
  baby_pink = '#DE8C92',
  pink = '#ff75a0',
  line = '#31353d',
  green = '#98c379',
  vibrant_green = '#7eca9c',
  nord_blue = '#81A1C1',
  blue = '#61afef',
  yellow = '#e7c787',
  sun = '#EBCB8B',
  purple = '#de98fd',
  dark_purple = '#c882e7',
  teal = '#519ABA',
  orange = '#fca2aa',
  cyan = '#a3b8ef',
  lightbg = '#2d3139',
  pmenu_bg = '#61afef',
  folder_bg = '#61afef',
}

M.base_16 = {
  base00 = '#1e222a',
  base01 = '#353b45',
  base02 = '#3e4451',
  base03 = '#545862',
  base04 = '#565c64',
  base05 = '#abb2bf',
  base06 = '#b6bdca',
  base07 = '#c8ccd4',
  base08 = '#e06c75',
  base09 = '#d19a66',
  base0A = '#e5c07b',
  base0B = '#98c379',
  base0C = '#56b6c2',
  base0D = '#61afef',
  base0E = '#c678dd',
  base0F = '#be5046',
}

M.syntax = {
  special = M.base_16.base08,
  fn = M.base_16.base0D,
  keyword = M.base_16.base0E,
  string = M.base_16.base0B,
  boolean = M.base_16.base08,
  number = M.base_16.base08,
  variable = M.base_16.base05,
  constant = M.base_16.base05,
  parameter = M.base_16.base05,
  type = M.base_16.base0A,
  constructor = M.base_16.base0A,
  property = M.base_16.base09,
  delimiter = M.base_16.base04,
  bracket = M.base_16.base04,
  tag = M.base_16.base08,
  error = M.base_16.base08,
}

M.type = 'dark'

return M
