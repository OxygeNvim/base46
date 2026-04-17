local utils = require('oxygen.core.utils')

local base46 = require('oxygen.base46')
local base16 = base46.get_theme_tb('base_16')
local colors = base46.get_theme_tb('base_30')

local mix = require('oxygen.base46.colors').mix

local style = config.ui.cmp.style

local highlights = {
  BlinkCmpMenu = { link = 'Pmenu' },
  BlinkCmpMenuBorder = { link = 'FloatBorder' },
  BlinkCmpDoc = { link = 'Normal' },
  BlinkCmpDocBorder = { link = 'FloatBorder' },
  BlinkCmpDocSeperator = { link = 'BlinkCmpDocBorder' },
  BlinkCmpSignatureHelp = { link = 'BlinkCmpDoc' },
  BlinkCmpSignatureHelpBorder = { link = 'BlinkCmpDocBorder' },
  BlinkCmpLabel = { fg = colors.white },
  BlinkCmpLabelDeprecated = { fg = colors.light_grey, strikethrough = true },
  BlinkCmpLabelMatch = { fg = colors.blue, bold = true },
  BlinkCmpSel = { link = 'PmenuSel', bold = true },
}

local item_kinds = {
  BlinkCmpKindConstant = { fg = base16.base09 },
  BlinkCmpKindFunction = { fg = base16.base0D },
  BlinkCmpKindIdentifier = { fg = base16.base08 },
  BlinkCmpKindField = { fg = base16.base08 },
  BlinkCmpKindVariable = { fg = base16.base0E },
  BlinkCmpKindSnippet = { fg = colors.red },
  BlinkCmpKindText = { fg = base16.base0B },
  BlinkCmpKindStructure = { fg = base16.base0E },
  BlinkCmpKindType = { fg = base16.base0A },
  BlinkCmpKindKeyword = { fg = base16.base07 },
  BlinkCmpKindMethod = { fg = base16.base0D },
  BlinkCmpKindConstructor = { fg = colors.blue },
  BlinkCmpKindFolder = { fg = base16.base07 },
  BlinkCmpKindModule = { fg = base16.base0A },
  BlinkCmpKindProperty = { fg = base16.base08 },
  BlinkCmpKindEnum = { fg = colors.blue },
  BlinkCmpKindUnit = { fg = base16.base0E },
  BlinkCmpKindClass = { fg = colors.teal },
  BlinkCmpKindFile = { fg = base16.base07 },
  BlinkCmpKindInterface = { fg = colors.green },
  BlinkCmpKindColor = { fg = colors.white },
  BlinkCmpKindReference = { fg = base16.base05 },
  BlinkCmpKindEnumMember = { fg = colors.purple },
  BlinkCmpKindStruct = { fg = base16.base0E },
  BlinkCmpKindValue = { fg = colors.cyan },
  BlinkCmpKindEvent = { fg = colors.yellow },
  BlinkCmpKindOperator = { fg = base16.base05 },
  BlinkCmpKindTypeParameter = { fg = base16.base08 },
  BlinkCmpKindCopilot = { fg = colors.green },
  BlinkCmpKindCodeium = { fg = colors.vibrant_green },
  BlinkCmpKindTabNine = { fg = colors.baby_pink },
  BlinkCmpKindSuperMaven = { fg = colors.yellow },
}

local styles = {
  default = {
    BlinkCmpItemMenu = { bg = colors.light_grey, italic = true },
  },
  colored = {
    BlinkCmpItemMenu = { bg = colors.light_grey, italic = true },
  },
}

if not styles[style] then
  utils.logger.error('Invalid style for nvim-cmp: ' .. style)
  utils.logger.warn('Using default style for nvim-cmp')
  style = 'default'
end

if style == 'default' then
  for key, value in pairs(item_kinds) do
    item_kinds[key] = { fg = value.fg, bg = colors.black }
  end
end

if style == 'colored' then
  for key, value in pairs(item_kinds) do
    item_kinds[key] = { fg = value.fg, bg = mix(value.fg, colors.black, 85) }
  end
end

highlights = table.merge(highlights, item_kinds)
highlights = table.merge(highlights, styles[style])

return highlights
