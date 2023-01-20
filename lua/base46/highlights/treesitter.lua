local theme = require('base46').get_theme_tb('base_16')
local syntax = require('base46').get_theme_tb('syntax')

return {
  ['@keyword'] = { link = 'Keyword' },
  ['@keyword.function'] = { link = '@keyword' },
  ['@keyword.return'] = { link = '@keyword' },
  ['@keyword.export'] = { link = '@keyword' },
  ['@keyword.operator'] = { link = '@operator' },
  ['@include'] = { link = 'Include' },
  ['@conditional'] = { link = 'Conditional' },
  ['@repeat'] = { link = 'Repeat' },
  ['@preproc'] = { link = 'PreProc' },

  ['@character'] = { link = 'Character' },
  ['@character.special'] = { link = 'SpecialChar' },
  ['@label'] = { link = 'Label' },

  ['@boolean'] = { link = 'Boolean' },
  ['@none'] = { link = '@boolean' },
  ['@number'] = { link = 'Number' },
  ['@float'] = { link = 'Float' },
  ['@string'] = { link = 'String' },
  ['@string.regex'] = { fg = theme.base0C },
  ['@string.escape'] = { fg = theme.base0C },

  ['@text'] = { fg = theme.base05 },
  ['@text.math'] = { fg = theme.base0D },
  ['@text.strong'] = { bold = true },
  ['@text.note'] = { link = 'SepcialComment' },
  ['@text.reference'] = { link = 'Constant' },
  ['@text.emphasis'] = { fg = theme.base09 },
  ['@text.strike'] = { fg = theme.base00, strikethrough = true },
  ['@text.literal'] = { fg = theme.base09 },
  ['@text.uri'] = { fg = theme.base09, underline = true },

  ['@comment'] = { link = 'Comment' },

  ['@constant'] = { link = 'Constant' },
  ['@constant.builtin'] = { link = 'Special' },
  ['@constant.macro'] = { link = 'Define' },

  ['@variable'] = { link = 'Variable' },
  ['@variable.builtin'] = { link = 'Special' },

  ['@function'] = { link = 'Function' },
  ['@function.builtin'] = { link = 'Special' },
  ['@function.call'] = { link = '@function' },
  ['@function.macro'] = { link = '@function' },

  ['@method'] = { link = '@function' },
  ['@method.call'] = { link = '@method' },

  ['@constructor'] = { fg = syntax.constructor },

  ['@error'] = { fg = syntax.error },
  ['@exception'] = { link = '@error' },
  ['@debug'] = { link = 'Debug' },

  ['@tag'] = { link = 'Tag' },
  ['@tag.attribute'] = { link = '@property' },
  ['@tag.delimiter'] = { link = 'Delimiter' },

  ['@type'] = { link = 'Type' },
  ['@type.builtin'] = { link = '@type' },
  ['@type.definition'] = { link = 'Typedef' },
  ['@storageclass'] = { link = 'StorageClass' },
  ['@type.qualifier'] = { link = '@storageclass' },

  ['@delimiter'] = { link = 'Delimiter' },
  ['@punctuation.bracket'] = { fg = syntax.bracket },
  ['@punctuation.delimiter'] = { link = '@delimiter' },
  ['@punctuation.special'] = { link = '@delimiter' },

  ['@field'] = { fg = theme.base0D },
  ['@parameter'] = { fg = syntax.parameter },
  ['@parameter.reference'] = { link = '@parameter' },
  ['@property'] = { fg = syntax.property, italic = true },

  ['@namespace'] = { link = 'Include' },
  ['@attribute'] = { fg = theme.base0A },

  ['@annotation'] = { link = 'PreProc' },

  ['@symbol'] = { fg = theme.base0B },

  ['@todo'] = { link = 'Todo' },

  ['@definition'] = { sp = theme.base04, underline = true },

  ['@scope'] = { bold = true },
}
