-- original theme: https://github.com/morhetz/gruvbox

local M = {}

M.base_30 = {
  white = '#ebdbb2',
  darker_black = '#232323',
  black = '#282828',
  black2 = '#2e2e2e',
  one_bg = '#353535',
  one_bg2 = '#3f3f3f',
  one_bg3 = '#444444',
  grey = '#4b4b4b',
  grey_fg = '#4e4e4e',
  grey_fg2 = '#505050',
  light_grey = '#656565',
  red = '#fb4934',
  baby_pink = '#cc241d',
  pink = '#ff75a0',
  line = '#36393a',
  green = '#b8bb26',
  vibrant_green = '#a9b665',
  nord_blue = '#83a598',
  blue = '#458588',
  yellow = '#d79921',
  sun = '#fabd2f',
  purple = '#b4bbc8',
  dark_purple = '#d3869b',
  teal = '#749689',
  orange = '#e78a4e',
  cyan = '#82b3a8',
  lightbg = '#3d3d3d',
  pmenu_bg = '#83a598',
  folder_bg = '#749689',
}

M.base_16 = {
  base00 = '#282828',
  base01 = '#3c3836',
  base02 = '#423e3c',
  base03 = '#484442',
  base04 = '#bdae93',
  base05 = '#d5c4a1',
  base06 = '#ebdbb2',
  base07 = '#fbf1c7',
  base08 = '#fb4934',
  base09 = '#fe8019',
  base0A = '#fabd2f',
  base0B = '#b8bb26',
  base0C = '#8ec07c',
  base0D = '#83a598',
  base0E = '#d3869b',
  base0F = '#d65d0e',
}

M.syntax = {
  special = M.base_16.base08,
  fn = M.base_16.base0A,
  keyword = M.base_16.base08,
  string = M.base_16.base0B,
  boolean = M.base_16.base0e,
  number = M.base_16.base0E,
  variable = M.base_16.base07,
  constant = M.base_16.base07,
  parameter = M.base_16.base0D,
  type = M.base_16.base0A,
  constructor = M.base_16.base0C,
  property = M.base_16.base0A,
  field = M.base_16.base0A,
  operator = M.base_16.base04,
  tag = M.base_16.base0C,
  error = M.base_16.base08,
}

M.type = 'dark'

return M
