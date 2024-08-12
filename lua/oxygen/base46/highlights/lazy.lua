local base46 = require('oxygen.base46')
local colors = base46.get_theme_tb('base_30')
local theme = base46.get_theme_tb('base_16')

return {
  LazyH1 = {
    bg = colors.red,
    fg = colors.black,
  },
  LazyH2 = {
    fg = colors.red,
    bold = true,
  },
  LazyButton = {
    bg = colors.black,
    fg = colors.white,
  },
  LazyButtonActive = {
    link = 'LazyH1',
  },

  LazyValue = { fg = colors.red },
  LazyDir = { fg = theme.base05 },
  LazyUrl = { fg = theme.base05 },
  LazyCommit = { fg = colors.green },
  LazyNoCond = { fg = colors.red },
  LazySpecial = { fg = colors.light_grey },
  LazyReasonFt = { fg = colors.purple },
  LazyOperator = { fg = colors.white },
  LazyTaskOutput = { fg = colors.white },
  LazyCommitIssue = { fg = colors.pink },
  LazyReasonKeys = { fg = colors.orange },
  LazyReasonEvent = { fg = colors.yellow },
  LazyReasonPlugin = { fg = colors.red },
  LazyReasonStart = { fg = colors.purple },
  LazyReasonCmd = { fg = colors.cyan },
  LazyReasonRuntime = { fg = colors.blue },
  LazyReasonSource = { fg = colors.cyan },
  LazyReasonImport = { fg = colors.orange },
  LazyProgressDone = { fg = colors.orange },
}
