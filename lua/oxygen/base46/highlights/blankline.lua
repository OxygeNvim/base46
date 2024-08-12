local base46 = require('oxygen.base46')
local colors = base46.get_theme_tb('base_30')

return {
  IblIndent = { fg = colors.line },
  IblScope = { fg = colors.orange },
}
