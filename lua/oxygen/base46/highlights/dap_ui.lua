local base46 = require('oxygen.base46')
local colors = base46.get_theme_tb('base_30')

return {
  DAPUIScope = { fg = colors.cyan },
  DAPUIType = { link = 'Type' },
  DAPUIValue = { fg = colors.cyan },
  DAPUIVariable = { link = 'Variable' },
  DapUIModifiedValue = { fg = colors.orange },
  DapUIDecoration = { fg = colors.cyan },
  DapUIThread = { fg = colors.green },
  DapUIStoppedThread = { fg = colors.cyan },
  DapUISource = { fg = colors.purple },
  DapUILineNumber = { link = 'LineNr' },
  DapUIFloatBorder = { link = 'FloatBorder' },

  DapUIWatchesEmpty = { fg = colors.red },
  DapUIWatchesValue = { fg = colors.green },
  DapUIWatchesError = { fg = colors.red },

  DapUIBreakpointsPath = { fg = colors.cyan },
  DapUIBreakpointsInfo = { fg = colors.green },
  DapUIBreakPointsCurrentLine = { fg = colors.green, bold = true },
  DapUIBreakpointsDisabledLine = { fg = colors.grey_fg },

  DapUIStepOver = { fg = colors.blue },
  DapUIStepOverNC = { fg = colors.blue },
  DapUIStepInto = { fg = colors.blue },
  DapUIStepIntoNC = { fg = colors.blue },
  DapUIStepBack = { fg = colors.blue },
  DapUIStepBackNC = { fg = colors.blue },
  DapUIStepOut = { fg = colors.blue },
  DapUIStepOutNC = { fg = colors.blue },
  DapUIStop = { fg = colors.red },
  DapUIStopNC = { fg = colors.red },
  DapUIPlayPause = { fg = colors.green },
  DapUIPlayPauseNC = { fg = colors.green },
  DapUIRestart = { fg = colors.green },
  DapUIRestartNC = { fg = colors.green },
  DapUIUnavailable = { fg = colors.grey_fg },
  DapUIUnavailableNC = { fg = colors.grey_fg },
}
