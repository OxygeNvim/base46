local base46 = require('oxygen.base46')
local colors = base46.get_theme_tb('base_30')

return {
  DapBreakpoint = { fg = colors.red },
  DapBreakpointCondition = { fg = colors.yellow },
  DapLogPoint = { fg = colors.cyan },
  DapStopped = { fg = colors.baby_pink },
}
