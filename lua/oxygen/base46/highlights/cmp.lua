local utils = require('oxygen.core.utils')

local base46 = require('oxygen.base46')
local base16 = base46.get_theme_tb('base_16')
local colors = base46.get_theme_tb('base_30')

local style = config.ui.cmp_style

local highlights = {
  CmpGhostText = { link = 'Comment' },
  CmpBorder = { link = 'FloatBorder' },
  CmpDocBorder = { link = 'CmpBorder' },
  CmpItemAbbr = { fg = colors.white },
  CmpItemAbbrDeprecated = { fg = colors.light_grey, strikethrough = true },
  CmpItemAbbrMatch = { fg = colors.blue, bold = true },
  CmpSel = { link = 'PmenuSel', bold = true },
}

local item_kinds = {
  CmpItemKindConstant = { link = 'Contant' },
  CmpItemKindFunction = { link = 'Function' },
  CmpItemKindIdentifier = { link = 'Identifier' },
  CmpItemKindField = { link = 'Identifier' },
  CmpItemKindVariable = { link = 'Variable' },
  CmpItemKindSnippet = { fg = colors.red },
  CmpItemKindText = { link = '@text' },
  CmpItemKindStructure = { link = 'Structure' },
  CmpItemKindType = { link = 'Type' },
  CmpItemKindKeyword = { link = 'Keyword' },
  CmpItemKindMethod = { link = '@method' },
  CmpItemKindConstructor = { link = '@constructor' },
  CmpItemKindFolder = { fg = base16.base07 },
  CmpItemKindModule = { link = '@module' },
  CmpItemKindProperty = { link = '@property' },
  CmpItemKindEnum = { link = '@lsp.type.enum' },
  CmpItemKindEnumMember = { link = '@lsp.type.enumMember' },
  CmpItemKindUnit = { fg = base16.base0E },
  CmpItemKindClass = { link = '@lsp.type.class' },
  CmpItemKindFile = { fg = base16.base07 },
  CmpItemKindInterface = { link = '@lsp.type.interface' },
  CmpItemKindColor = { fg = colors.white },
  CmpItemKindReference = { fg = base16.base05 },
  CmpItemKindStruct = { link = '@lsp.type.struct' },
  CmpItemKindValue = { fg = colors.cyan },
  CmpItemKindEvent = { fg = colors.yellow },
  CmpItemKindOperator = { link = 'Operator' },
  CmpItemKindTypeParameter = { link = '@lsp.type.typeParameter' },
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
  utils.logger.error('Invalid style for nvim-cmp: ' .. style)
  utils.logger.warn('Using default style for nvim-cmp')
  style = 'default'
end

if style == 'atom' then
  for key, value in pairs(item_kinds) do
    item_kinds[key] = { bg = value.fg, fg = colors.black, bold = true }
  end
end

highlights = table.merge(highlights, item_kinds)
highlights = table.merge(highlights, styles[style])

return highlights
