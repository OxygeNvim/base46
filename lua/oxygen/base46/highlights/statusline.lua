local colors = base46.get_theme_tb('base_30')

return {
  StatusLine = { bg = colors.black },
  C_FileIcon = { bg = colors.darker_black, fg = colors.white },
  C_FileInfo = { bg = colors.darker_black, fg = colors.white },
  C_Separator = { fg = colors.darker_black, bg = colors.black },
  C_GitIcon = { fg = colors.light_grey, bg = colors.black },
  C_LspError = { fg = colors.red, bg = colors.black },
  C_LspWarning = { fg = colors.yellow, bg = colors.black },
  C_LspHint = { fg = colors.purple, bg = colors.black },
  C_LspInfo = { fg = colors.vibrant_green, bg = colors.black },
  C_NormalMode = { bg = colors.blue, fg = colors.black, bold = true },
  C_InsertMode = { bg = colors.purple, fg = colors.black, bold = true },
  C_TerminalMode = { bg = colors.yellow, fg = colors.black, bold = true },
  C_VisualMode = { bg = colors.cyan, fg = colors.black, bold = true },
  C_ReplaceMode = { bg = colors.orange, fg = colors.black, bold = true },
  C_ConfirmMode = { bg = colors.vibrant_green, fg = colors.black, bold = true },
  C_CommandMode = { bg = colors.vibrant_green, fg = colors.black, bold = true },
  C_SelectMode = { bg = colors.blue, fg = colors.black, bold = true },
  C_NormalModeSeparator = { fg = colors.blue, bg = colors.darker_black },
  C_InsertModeSeparator = { fg = colors.purple, bg = colors.darker_black },
  C_TerminalModeSeparator = { fg = colors.yellow, bg = colors.darker_black },
  C_VisualModeSeparator = { fg = colors.cyan, bg = colors.darker_black },
  C_ReplaceModeSeparator = { fg = colors.orange, bg = colors.darker_black },
  C_ConfirmModeSeparator = { fg = colors.vibrant_green, bg = colors.darker_black },
  C_CommandModeSeparator = { fg = colors.vibrant_green, bg = colors.darker_black },
  C_SelectModeSeparator = { fg = colors.blue, bg = colors.darker_black },
  C_PositionText = { fg = colors.white, bg = colors.darker_black },
  C_PositionIcon = { fg = colors.vibrant_green, bg = colors.darker_black },
}
