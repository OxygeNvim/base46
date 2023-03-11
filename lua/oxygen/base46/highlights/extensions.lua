local colors = base46.get_theme_tb('base_30')

return {
      ['@oxygen.updater.name'] = { bg = colors.grren, fg = colors.white },
      ['@oxygen.updater.title'] = { fg = colors.white },
      ['@oxygen.updater.description'] = { fg = colors.blue },
      ['@oxygen.updater.description.error'] = { fg = colors.red },
}
