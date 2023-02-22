local M = {}

M.base_30 = {
  white = '#cacaca',
  darker_black = '#1a1a1a',
  black = '#242424',
  black2 = '#2a2a2a',
  grey = '#323232',
  grey_fg = '#3a3a3a',
  grey_fg2 = '#424242',
  light_grey = '#4a4a4a',
  red = '#ac1111',
  baby_pink = '#f98385',
  pink = '#f36d76',
  line = '#3a3a3a',
  green = '#9AA83A',
  vibrant_green = '#9AA83A',
  blue = '#6089B4',
  yellow = '#e6c181',
  sun = '#fce668',
  purple = '#9872A2',
  dark_purple = '#765080',
  teal = '#34bfd0',
  orange = '#CE6700',
  cyan = '#41afef',
  statusline_bg = '#292c35',
  lightbg = '#9A9B99',
  pmenu_bg = '#9AA83A',
  folder_bg = '#e6c181',
}

M.base_16 = {
  base00 = '#1E1E1E',
  base01 = '#303030',
  base02 = '#484854',
  base03 = '#545862',
  base04 = '#5b5e67',
  base05 = '#6089B4',
  base06 = '#9A9B99',
  base07 = '#9A9B99',
  base08 = '#9872A2',
  base09 = '#ac1111',
  base0A = '#e6c181',
  base0B = '#9AA83A',
  base0C = '#ac1111',
  base0D = '#CE6700',
  base0E = '#9872A2',
  base0F = '#676867',
}

M.syntax = {
  special = M.base_16.base05,
  fn = M.base_16.base0D,
  keyword = M.base_16.base08,
  string = M.base_16.base0B,
  boolean = M.base_16.base05,
  number = M.base_16.base05,
  variable = M.base_16.base05,
  constant = M.base_16.base05,
  parameter = M.base_16.base05,
  type = M.base_16.base0C,
  constructor = M.base_16.base09,
  property = M.base_16.base0A,
  field = M.base_16.base0A,
  operator = M.base_16.base04,
  tag = M.base_16.base05,
  error = M.base_16.base0C,
}

M.type = 'dark'

return M
