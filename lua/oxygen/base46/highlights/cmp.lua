local base16 = base46.get_theme_tb('base_16')
local colors = base46.get_theme_tb('base_30')

local style = config.ui.cmp_style

local highlights = {
  CmpBorder = { link = 'FloatBorder' },
  CmpDocBorder = { link = 'CmpBorder' },
  CmpItemAbbr = { fg = colors.white },
  CmpItemAbbrDeprecated = { fg = colors.light_gray, strikethrough = true },
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
}

local styles = {
  default = {
    CmpDoc = { link = 'Pmenu' },
    CmpPmenu = { link = 'Pmenu' },
  },
  bordered = {
    CmpDoc = { bg = colors.black },
    CmpPmenu = { bg = colors.black },
  },
  atom = {
    CmpDoc = { link = 'Pmenu' },
    CmpPmenu = { link = 'Pmenu' },
    CmpItemMenu = { bg = colors.black2 },
  },
}

if not styles[style] then
  error('Invalid style for cmp ' .. style)
  return {}
end

if style == 'atom' then
  for key, value in pairs(item_kinds) do
    item_kinds[key] = { bg = value.fg, fg = utils.change_hex_lightness(colors.black, -3), bold = true }
  end
end

highlights = utils.merge(highlights, item_kinds)
highlights = utils.merge(highlights, styles[style])

return highlights
