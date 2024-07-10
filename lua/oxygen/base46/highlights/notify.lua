local base46 = require('oxygen.base46')
local colors = base46.get_theme_tb('base_30')

return {
  NotifyERRORBorder = { link = 'FloatBorder' },
  NotifyERRORIcon = { fg = colors.red },
  NotifyERRORTitle = { fg = colors.red },
  NotifyWARNBorder = { link = 'FloatBorder' },
  NotifyWARNIcon = { fg = colors.orange },
  NotifyWARNTitle = { fg = colors.orange },
  NotifyINFOBorder = { link = 'FloatBorder' },
  NotifyINFOIcon = { fg = colors.green },
  NotifyINFOTitle = { fg = colors.green },
  NotifyDEBUGBorder = { link = 'FloatBorder' },
  NotifyDEBUGIcon = { fg = colors.grey },
  NotifyDEBUGTitle = { fg = colors.grey },
  NotifyTRACEBorder = { link = 'FloatBorder' },
  NotifyTRACEIcon = { fg = colors.purple },
  NotifyTRACETitle = { fg = colors.purple },
}
