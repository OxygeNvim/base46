local utils = require('oxygen.core.utils')

local base46 = require('oxygen.base46')
local base16 = base46.get_theme_tb('base_16')
local colors = base46.get_theme_tb('base_30')

local mix = require('oxygen.base46.colors').mix

local style = config.ui.cmp.style

local highlights = {
  CmpDoc = { link = 'Pmenu' },
  CmpPmenu = { link = 'Pmenu' },
  CmpGhostText = { link = 'Comment' },
  CmpBorder = { link = 'FloatBorder' },
  CmpDocBorder = { link = 'CmpBorder' },
  CmpItemAbbr = { fg = colors.white },
  CmpItemAbbrDeprecated = { fg = colors.light_grey, strikethrough = true },
  CmpItemAbbrMatch = { fg = colors.blue, bold = true },
  CmpSel = { link = 'PmenuSel', bold = true },
}

local item_kinds = {
  CmpItemKindConstant = { fg = base16.base09 },
  CmpItemKindFunction = { fg = base16.base0D },
  CmpItemKindIdentifier = { fg = base16.base08 },
  CmpItemKindField = { fg = base16.base08 },
  CmpItemKindVariable = { fg = base16.base0E },
  CmpItemKindSnippet = { fg = colors.red },
  CmpItemKindText = { fg = base16.base0B },
  CmpItemKindStructure = { fg = base16.base0E },
  CmpItemKindType = { fg = base16.base0A },
  CmpItemKindKeyword = { fg = base16.base07 },
  CmpItemKindMethod = { fg = base16.base0D },
  CmpItemKindConstructor = { fg = colors.blue },
  CmpItemKindFolder = { fg = base16.base07 },
  CmpItemKindModule = { fg = base16.base0A },
  CmpItemKindProperty = { fg = base16.base08 },
  CmpItemKindEnum = { fg = colors.blue },
  CmpItemKindUnit = { fg = base16.base0E },
  CmpItemKindClass = { fg = colors.teal },
  CmpItemKindFile = { fg = base16.base07 },
  CmpItemKindInterface = { fg = colors.green },
  CmpItemKindColor = { fg = colors.white },
  CmpItemKindReference = { fg = base16.base05 },
  CmpItemKindEnumMember = { fg = colors.purple },
  CmpItemKindStruct = { fg = base16.base0E },
  CmpItemKindValue = { fg = colors.cyan },
  CmpItemKindEvent = { fg = colors.yellow },
  CmpItemKindOperator = { fg = base16.base05 },
  CmpItemKindTypeParameter = { fg = base16.base08 },
  CmpItemKindCopilot = { fg = colors.green },
  CmpItemKindCodeium = { fg = colors.vibrant_green },
  CmpItemKindTabNine = { fg = colors.baby_pink },
  CmpItemKindSuperMaven = { fg = colors.yellow },
}

local styles = {
  default = {},
  atom = {
    CmpItemMenu = { bg = colors.light_grey, italic = true },
  },
  atom_colored = {
    CmpItemMenu = { bg = colors.light_grey, italic = true },
  },
}

if not styles[style] then
  utils.logger.error('Invalid style for nvim-cmp: ' .. style)
  utils.logger.warn('Using default style for nvim-cmp')
  style = 'default'
end

if style == 'atom' then
  for key, value in pairs(item_kinds) do
    item_kinds[key] = { fg = value.fg, bg = colors.black }
  end
end

if style == 'atom_colored' then
  for key, value in pairs(item_kinds) do
    item_kinds[key] = { fg = value.fg, bg = mix(value.fg, colors.black, 85) }
  end
end

highlights = table.merge(highlights, item_kinds)
highlights = table.merge(highlights, styles[style])

return highlights
