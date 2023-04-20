local colors = base46.get_theme_tb('base_30')

local primary = colors.black
local secondary = colors.darker_black

return {
  BufferLineBackground = {
    fg = colors.light_grey,
    bg = secondary,
  },
  BufferLineFill = {
    fg = colors.light_grey,
    bg = secondary,
  },

  BufferLineBufferVisible = {
    fg = colors.light_grey,
    bg = secondary,
  },
  BufferLineBufferSelected = {
    fg = colors.white,
    bg = primary,
  },

  BufferLineCloseButton = {
    fg = colors.light_grey,
    bg = secondary,
  },
  BufferLineCloseButtonVisible = {
    fg = colors.light_grey,
    bg = secondary,
  },
  BufferLineCloseButtonSelected = {
    fg = colors.red,
    bg = primary,
  },

  BufferlineIndicatorVisible = {
    fg = secondary,
    bg = secondary,
  },
  BufferlineIndicatorSelected = {
    fg = primary,
    bg = primary,
  },

  BufferLineModified = {
    fg = colors.green,
    bg = secondary,
  },
  BufferLineModifiedVisible = {
    fg = colors.green,
    bg = secondary,
  },
  BufferLineModifiedSelected = {
    fg = colors.green,
    bg = primary,
  },

  BufferLineSeparator = {
    fg = secondary,
    bg = secondary,
  },
  BufferLineSeparatorVisible = {
    fg = secondary,
    bg = secondary,
  },
  BufferLineSeparatorSelected = {
    fg = primary,
    bg = primary,
  },

  BufferLineTab = {
    fg = colors.light_grey,
    bg = secondary,
  },
  BufferLineTabSelected = {
    fg = colors.light_grey,
    bg = primary,
  },

  BufferLineDevIconDefaultSelected = {
    bg = 'none',
  },
  BufferLineDevIconDefaultInactive = {
    bg = 'none',
  },

  BufferLineDuplicate = {
    fg = colors.light_grey,
    bg = secondary,
  },
  BufferLineDuplicateVisible = {
    fg = colors.light_grey,
    bg = secondary,
  },
  BufferLineDuplicateSelected = {
    fg = colors.light_grey,
    bg = primary,
  },
}
