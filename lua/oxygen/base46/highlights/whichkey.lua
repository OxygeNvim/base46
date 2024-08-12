local base46 = require('oxygen.base46')
local colors = base46.get_theme_tb('base_30')

return {
  WhichKey = { fg = colors.blue },
  WhichKeySeparator = { fg = colors.light_grey },
  WhichKeyDesc = { fg = colors.red },
  WhichKeyGroup = { fg = colors.green },
  WhichKeyValue = { fg = colors.green },
}
