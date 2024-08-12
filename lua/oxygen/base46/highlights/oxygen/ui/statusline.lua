local base46 = require('oxygen.base46')
local colors = base46.get_theme_tb('base_30')

return {
  StatusLine = { bg = colors.black },

  OxygenStatusLineFileIcon = { bg = colors.darker_black, fg = colors.white },
  OxygenStatusLineFileName = { bg = colors.darker_black, fg = colors.white },
  OxygenStatusLineSeparator = { fg = colors.darker_black, bg = colors.black },
  OxygenStatusLineGitIcon = { fg = colors.light_grey, bg = colors.black },
  OxygenStatusLineLspError = { fg = colors.red, bg = colors.black },
  OxygenStatusLineLspWarn = { fg = colors.yellow, bg = colors.black },
  OxygenStatusLineLspHint = { fg = colors.purple, bg = colors.black },
  OxygenStatusLineLspInfo = { fg = colors.vibrant_green, bg = colors.black },
  OxygenStatusLineNormalMode = { bg = colors.blue, fg = colors.black, bold = true },
  OxygenStatusLineInsertMode = { bg = colors.purple, fg = colors.black, bold = true },
  OxygenStatusLineTerminalMode = { bg = colors.yellow, fg = colors.black, bold = true },
  OxygenStatusLineVisualMode = { bg = colors.cyan, fg = colors.black, bold = true },
  OxygenStatusLineReplaceMode = { bg = colors.orange, fg = colors.black, bold = true },
  OxygenStatusLineConfirmMode = { bg = colors.vibrant_green, fg = colors.black, bold = true },
  OxygenStatusLineCommandMode = { bg = colors.vibrant_green, fg = colors.black, bold = true },
  OxygenStatusLineSelectMode = { bg = colors.blue, fg = colors.black, bold = true },
  OxygenStatusLineNormalModeSeparator = { fg = colors.blue, bg = colors.darker_black },
  OxygenStatusLineInsertModeSeparator = { fg = colors.purple, bg = colors.darker_black },
  OxygenStatusLineTerminalModeSeparator = { fg = colors.yellow, bg = colors.darker_black },
  OxygenStatusLineVisualModeSeparator = { fg = colors.cyan, bg = colors.darker_black },
  OxygenStatusLineReplaceModeSeparator = { fg = colors.orange, bg = colors.darker_black },
  OxygenStatusLineConfirmModeSeparator = { fg = colors.vibrant_green, bg = colors.darker_black },
  OxygenStatusLineCommandModeSeparator = { fg = colors.vibrant_green, bg = colors.darker_black },
  OxygenStatusLineSelectModeSeparator = { fg = colors.blue, bg = colors.darker_black },
  OxygenStatusLinePositionText = { fg = colors.white, bg = colors.darker_black },
  OxygenStatusLinePositionIcon = { fg = colors.vibrant_green, bg = colors.darker_black },
}
