local theme = require('base46').get_theme_tb('base_16')
local syntax = require('base46').get_theme_tb('syntax')

return {
  Keyword = { fg = syntax.keyword },
  PreProc = { link = 'Keyword' },

  Conditional = { link = 'Keyword' },
  Include = { link = 'Keyword' },
  Repeat = { link = 'Keyword' },
  Define = { link = 'Keyword' },
  Macro = { link = 'Keyword' },
  PreCondit = { link = 'Keyword' },
  Operator = { link = 'Keyword' },

  Boolean = { fg = syntax.boolean },
  Number = { fg = syntax.number },
  Float = { link = 'Number' },
  String = { fg = syntax.string },

  Bold = { bold = true },
  Italic = { italic = true },
  Underlined = { underline = true },

  Constant = { fg = syntax.constant },

  Variable = { fg = syntax.variable },

  Function = { fg = syntax.fn },

  Tag = { fg = syntax.tag },

  Type = { fg = syntax.type, sp = 'none' },
  Typedef = { link = 'Type' },
  Structure = { fg = theme.base0E },
  StorageClass = { link = 'Keyword' },

  Special = { fg = syntax.special },
  SpecialComment = { link = 'Comment' },
  Character = { fg = theme.base08 },
  SpecialChar = { fg = theme.base0F },

  Delimiter = { fg = syntax.delimiter },

  Todo = { fg = theme.base0A, bg = theme.base01 },

  Label = { fg = theme.base0A },

  Statement = { fg = theme.base08 },
  Identifier = { fg = theme.base08, sp = 'none' },
}
