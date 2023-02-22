local colors = base46.get_theme_tb('base_30')
local theme = base46.get_theme_tb('base_16')

return {
  MatchWord = { bg = colors.grey, fg = colors.white },
  MatchParen = { link = 'MatchWord' },

  lCursor = { fg = theme.base00, bg = theme.base05 },
  CursorIM = { fg = theme.base00, bg = theme.base05 },
  Cursor = { fg = theme.base00, bg = theme.base05 },
  CursorColumn = { bg = theme.base01, sp = 'none' },
  CursorLine = { bg = 'none', sp = 'none' },
  CursorLineNr = { fg = colors.white },

  Pmenu = { bg = colors.darker_black },
  PmenuSbar = { bg = colors.black2 },
  PmenuSel = { bg = colors.pmenu_bg, fg = colors.black },
  PmenuThumb = { bg = colors.line },

  Comment = { fg = colors.grey_fg },

  LineNr = { fg = colors.grey },

  FloatBorder = { fg = colors.line },
  VertSplit = { fg = colors.line },
  WinSeparator = { fg = colors.line },

  NormalFloat = { link = 'Normal' },
  Normal = { fg = theme.base05, bg = theme.base00 },

  SpellBad = { undercurl = true, sp = theme.base08 },
  SpellLocal = { undercurl = true, sp = theme.base0C },
  SpellCap = { undercurl = true, sp = theme.base0D },
  SpellRare = { undercurl = true, sp = theme.base0E },

  NvimInternalError = { fg = colors.red },
  Error = { fg = theme.base00, bg = theme.base08 },
  ErrorMsg = { fg = theme.base08, bg = theme.base00 },
  Exception = { fg = theme.base08 },
  WarningMsg = { fg = theme.base08 },

  MsgArea = { fg = colors.white },
  ModeMsg = { fg = theme.base0B },
  MoreMsg = { fg = theme.base0D },

  SignColumn = { fg = theme.base03, sp = 'none' },
  ColorColumn = { bg = theme.base01, sp = 'none' },
  FoldColumn = { fg = theme.base0C, bg = theme.base01 },

  Visual = { bg = theme.base02 },
  VisualNOS = { fg = theme.base08 },

  Debug = { fg = theme.base08 },
  Directory = { fg = theme.base0D },
  Folded = { fg = theme.base03, bg = theme.base01 },
  Macro = { fg = theme.base08 },

  Search = { fg = theme.base01, bg = theme.base0A },
  IncSearch = { fg = theme.base01, bg = theme.base09 },
  CurSearch = { link = 'IncSearch' },
  Substitute = { fg = theme.base01, bg = theme.base0A, sp = 'none' },

  Question = { fg = theme.base0D },
  SpecialKey = { fg = theme.base03 },
  TooLong = { fg = theme.base08 },
  WildMenu = { fg = theme.base08, bg = theme.base0A },
  Title = { fg = theme.base0D, sp = 'none' },
  Conceal = { bg = 'none' },
  NonText = { fg = theme.base03 },
  QuickFixLine = { bg = theme.base01, sp = 'none' },
  healthSuccess = { bg = colors.green, fg = colors.black },
}
