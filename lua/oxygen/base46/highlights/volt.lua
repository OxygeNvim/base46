local base46 = require('oxygen.base46')
local colors = base46.get_theme_tb('base_30')

return {
  ExDarkBg = { bg = colors.darker_black },
  ExDarkBgBorder = { bg = colors.darker_black, fg = colors.darker_black },

  ExBlack2Bg = { bg = colors.black },
  ExBlack2border = { bg = colors.black, fg = colors.black },

  ExRed = { fg = colors.red },
  ExYellow = { fg = colors.yellow },
  ExBlue = { fg = colors.blue },
  ExGreen = { fg = colors.green },

  ExBlack3Bg = { bg = colors.black2 },
  ExBlack3Border = { bg = colors.black2, fg = colors.black2 },
  ExLightGrey = { fg = colors.light_grey },
}
