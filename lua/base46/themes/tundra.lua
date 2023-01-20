-- original theme: https://github.com/sam4llis/nvim-tundra

local M = {}

M.base_30 = {
  white = '#FFFFFF',
  darker_black = '#0b1221',
  black = '#111827',
  black2 = '#1a2130',
  one_bg = '#1e2534',
  one_bg2 = '#282f3e',
  one_bg3 = '#323948',
  grey = '#3e4554',
  grey_fg = '#4a5160',
  grey_fg2 = '#545b6a',
  light_grey = '#5f6675',
  red = '#FCA5A5',
  baby_pink = '#FECDD3',
  pink = '#ff8e8e',
  line = '#282f3e',
  green = '#B5E8B0',
  vibrant_green = '#B5E8B0',
  nord_blue = '#9baaf2',
  blue = '#A5B4FC',
  yellow = '#E8D4B0',
  sun = '#f2deba',
  purple = '#BDB0E4',
  dark_purple = '#b3a6da',
  teal = '#719bd3',
  orange = '#FBC19D',
  cyan = '#BAE6FD',
  lightbg = '#282f3e',
  pmenu_bg = '#FCA5A5',
  folder_bg = '#FECDD3',
}

M.base_16 = {
  base00 = '#111827',
  base01 = '#1e2534',
  base02 = '#282f3e',
  base03 = '#323948',
  base04 = '#3e4554',
  base05 = '#F3F4F6',
  base06 = '#E5E7EB',
  base07 = '#D1D5DB',
  base08 = '#DDD6FE',
  base09 = '#E8D4B0',
  base0A = '#FBC19D',
  base0B = '#B5E8B0',
  base0C = '#BAE6FD',
  base0D = '#BAE6FD',
  base0E = '#FCA5A5',
  base0F = '#9CA3AF',
}

M.syntax = {
  special = M.base_16.base0A,
  fn = M.base_16.base0C,
  keyword = M.base_16.base0E,
  string = M.base_16.base0B,
  boolean = M.base_16.base0A,
  number = M.base_16.base0A,
  variable = M.base_16.base05,
  constant = M.base_16.base05,
  parameter = M.base_16.base08,
  type = M.base_30.baby_pink,
  constructor = M.base_16.base0C,
  property = M.base_16.base08,
  delimiter = M.base_16.base0F,
  bracket = M.base_16.base0C,
  tag = M.base_16.base0C,
  error = M.base_16.base0E,
}

M.type = 'dark'

return M
