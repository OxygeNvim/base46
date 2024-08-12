local base46 = require('oxygen.base46')
local colors = base46.get_theme_tb('base_30')
local theme = base46.get_theme_tb('base_16')
local syntax = base46.get_theme_tb('syntax')

local syntax_hl = {
  Keyword = { fg = syntax.keyword },
  PreProc = { link = 'Keyword' },
  Conditional = { link = 'Keyword' },
  Include = { link = 'Keyword' },
  Repeat = { link = 'Keyword' },
  Define = { link = 'Keyword' },
  Macro = { link = 'Constant' },
  PreCondit = { link = 'Keyword' },
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
  Structure = { fg = syntax.constructor },
  StorageClass = { link = 'Keyword' },
  Special = { fg = syntax.special },
  SpecialComment = { link = 'Comment' },
  Character = { fg = theme.base08 },
  SpecialChar = { fg = theme.base0F },
  Delimiter = { link = 'Operator' },
  Operator = { fg = syntax.operator },
  Noise = { link = 'Operator' },
  Todo = { fg = theme.base0A, bg = theme.base01 },
  Label = { link = 'String' },
  Quote = { link = 'String' },
  Statement = { fg = theme.base08 },
  Identifier = { fg = syntax.field },
  Exception = { fg = syntax.error },
}

local treesitter = {
  ['@keyword'] = { link = 'Keyword' },
  ['@keyword.function'] = { link = '@keyword' },
  ['@keyword.return'] = { link = '@keyword' },
  ['@keyword.export'] = { link = '@keyword' },
  ['@keyword.operator'] = { link = '@keyword' },

  ['@include'] = { link = 'Include' },

  ['@module'] = { link = '@include' },

  ['@conditional'] = { link = 'Conditional' },
  ['@conditional.ternary'] = { link = 'Operator' },

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
  ['@string.regex'] = { link = '@text.regexp' },
  ['@string.escape'] = { link = 'Special' },
  ['@string.special'] = { link = 'SpecialChar' },

  ['@text'] = { fg = theme.base05 },
  ['@text.math'] = { fg = theme.base0D },
  ['@text.strong'] = { bold = true },
  ['@text.note'] = { link = 'SepcialComment' },
  ['@text.reference'] = { link = 'Constant' },
  ['@text.emphasis'] = { fg = theme.base09 },
  ['@text.strike'] = { fg = theme.base00, strikethrough = true },
  ['@text.literal'] = { fg = theme.base08 },
  ['@text.uri'] = { fg = theme.base09, underline = true },

  ['@comment'] = { link = 'Comment' },

  ['@constant'] = { link = 'Constant' },
  ['@constant.builtin'] = { fg = syntax.null },
  ['@constant.macro'] = { link = 'Define' },

  ['@variable'] = { link = 'Variable' },
  ['@variable.builtin'] = { link = 'Special' },

  ['@function'] = { link = 'Function' },
  ['@function.builtin'] = { link = 'Special' },
  ['@function.call'] = { link = '@function' },
  ['@function.macro'] = { link = '@function' },

  ['@method'] = { fg = syntax.method },
  ['@method.call'] = { link = '@method' },

  ['@macro'] = { link = 'Macro' },

  ['@constructor'] = { fg = syntax.constructor },

  ['@error'] = { fg = syntax.error },
  ['@exception'] = { link = 'Exception' },
  ['@debug'] = { link = 'Debug' },

  ['@tag'] = { link = 'Tag' },
  ['@tag.attribute'] = { link = '@attribute' },
  ['@tag.delimiter'] = { link = 'Operator' },

  ['@type'] = { link = 'Type' },
  ['@type.builtin'] = { link = '@type' },
  ['@type.definition'] = { link = 'Typedef' },
  ['@type.qualifier'] = { link = '@storageclass' },

  ['@storageclass'] = { link = 'StorageClass' },

  ['@delimiter'] = { link = '@operator' },

  ['@parenthesis'] = { link = '@operator' },

  ['@punctuation.bracket'] = { link = '@parenthesis' },
  ['@punctuation.delimiter'] = { link = '@delimiter' },
  ['@punctuation.special'] = { link = '@operator' },

  ['@parameter'] = { fg = syntax.parameter },
  ['@parameter.reference'] = { fg = colors.white },

  ['@property'] = { fg = syntax.property },

  ['@field'] = { fg = syntax.field },

  ['@namespace'] = { link = '@include' },

  ['@attribute'] = { fg = syntax.attribute },

  ['@annotation'] = { fg = theme.base0F },

  ['@symbol'] = { fg = theme.base0B },

  ['@todo'] = { link = 'Todo' },

  ['@definition'] = { link = '@operator' },

  ['@scope'] = { bold = true },

  ['@diff.plus'] = { fg = colors.green },
  ['@diff.minus'] = { fg = colors.red },
  ['@diff.delta'] = { fg = colors.light_grey },
}

local semantic_hl = {
  ['@lsp.type.boolean'] = { link = '@boolean' },
  ['@lsp.type.builtinType'] = { link = '@type.builtin' },
  ['@lsp.type.comment'] = { link = '@comment' },
  ['@lsp.type.enum'] = { link = '@type' },
  ['@lsp.type.enumMember'] = { link = '@constant' },
  ['@lsp.type.escapeSequence'] = { link = '@string.escape' },
  ['@lsp.type.formatSpecifier'] = { link = '@punctuation.special' },
  ['@lsp.type.interface'] = { link = 'Structure' },
  ['@lsp.type.keyword'] = { link = '@keyword' },
  ['@lsp.type.namespace'] = { link = '@module' },
  ['@lsp.type.number'] = { link = '@number' },
  ['@lsp.type.operator'] = { link = '@operator' },
  ['@lsp.type.parameter'] = { link = '@parameter' },
  ['@lsp.type.property'] = { link = '@property' },
  ['@lsp.type.selfKeyword'] = { link = '@variable.builtin' },
  ['@lsp.type.typeAlias'] = { link = '@type.definition' },
  ['@lsp.type.unresolvedReference'] = { link = '@error' },
  ['@lsp.type.variable'] = {},
  ['@lsp.typemod.class.defaultLibrary'] = { link = '@type.builtin' },
  ['@lsp.typemod.enum.defaultLibrary'] = { link = '@type.builtin' },
  ['@lsp.typemod.enumMember.defaultLibrary'] = { link = '@constant.builtin' },
  ['@lsp.typemod.function.defaultLibrary'] = { link = '@function.builtin' },
  ['@lsp.typemod.keyword.async'] = { link = '@keyword.coroutine' },
  ['@lsp.typemod.macro.defaultLibrary'] = { link = '@function.builtin' },
  ['@lsp.typemod.method.defaultLibrary'] = { link = '@function.builtin' },
  ['@lsp.typemod.operator.injected'] = { link = '@operator' },
  ['@lsp.typemod.string.injected'] = { link = '@string' },
  ['@lsp.typemod.type.defaultLibrary'] = { link = '@type.builtin' },
  ['@lsp.typemod.variable.defaultLibrary'] = { link = '@variable.builtin' },
  ['@lsp.typemod.variable.injected'] = { link = '@variable' },
}

return table.merge(syntax_hl, treesitter, semantic_hl)
