local base46 = require('oxygen.base46')
local colors = base46.get_theme_tb('base_30')

return {
  LspReferenceText = { fg = colors.darker_black, bg = colors.white },
  LspReferenceRead = { fg = colors.darker_black, bg = colors.white },
  LspReferenceWrite = { fg = colors.darker_black, bg = colors.white },
  LspInlayHint = { link = 'Comment' },

  DiagnosticError = { fg = colors.red },
  DiagnosticWarn = { fg = colors.yellow },
  DiagnosticInfo = { fg = colors.green },
  DiagnosticHint = { fg = colors.purple },
  DiagnosticUnnecessary = { link = 'Comment' },
  DiagnosticDeprecates = { link = 'Comment' },

  DiagnosticInformation = { link = 'DiagnosticInfo' },

  DiagnosticSignError = { link = 'DiagnosticError' },
  DiagnosticSignWarn = { link = 'DiagnosticWarn' },
  DiagnosticSignInfo = { link = 'DiagnosticInfo' },
  DiagnosticSignHint = { link = 'DiagnosticHint' },
}
