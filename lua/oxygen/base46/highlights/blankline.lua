local colors = base46.get_theme_tb('base_30')

return {
  IndentBlanklineChar = { fg = colors.line },
  IndentBlanklineSpaceChar = { fg = colors.line },
  IndentBlanklineContextChar = { fg = colors.grey },
  IndentBlanklineContextStart = { bg = colors.black2 },
}
