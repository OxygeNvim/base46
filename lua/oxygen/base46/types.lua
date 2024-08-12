--- @class Base46HLTypes
--- @field fg string
--- @field bg string
--- @field sp string
--- @field blend number
--- @field bold boolean
--- @field standout boolean
--- @field underline boolean
--- @field undercurl boolean
--- @field underdouble boolean
--- @field underdotted boolean
--- @field underdashed boolean
--- @field strikethrough boolean
--- @field italic boolean
--- @field reverse boolean
--- @field nocombine boolean
--- @field link "'NONE'"|string
--- @field default boolean
--- @field ctermfg number
--- @field ctermbg number
--- @field cterm string

--- @alias Base46ThemeColors Base46Base16ColorsTable|Base46Base30ColorsTable|Base46SyntaxColorsTable
--- @alias Base46ThemeColorsTable table<Base46ThemeField, Base46ThemeColors>

--- @alias Base46HLColorsTable table<Base46HLTypes, Base46ThemeColors|string>
--- @alias Base46HLGroups table<string, Base46HLColorsTable>

--- @alias Base46ThemeField "'base_30'"|"'base_16'"|"'syntax'"|"'polish_hl'"
--- @alias Base46ThemeVariant "'dark'"|"'light'"

--- @alias Base46Base16Colors "'base00'"|"'base01'"|"'base02'"|"'base03'"|"'base04'"|"'base05'"|"'base06'"|"'base07'"|"'base08'"|"'base09'"|"'base0A'"|"'base0B'"|"'base0C'"|"'base0D'"|"'base0E'"|"'base0F'"
--- @class Base46Base16ColorsTable
--- @field base00 string
--- @field base01 string
--- @field base02 string
--- @field base03 string
--- @field base04 string
--- @field base05 string
--- @field base06 string
--- @field base07 string
--- @field base08 string
--- @field base09 string
--- @field base0A string
--- @field base0B string
--- @field base0C string
--- @field base0D string
--- @field base0E string
--- @field base0F string

--- @alias Base46Base30Colors "'white'"|"'darker_black'"|"'black'"|"'black2'"|"'grey'"|"'grey_fg'"|"'light_grey'"|"'red'"|"'baby_pink'"|"'pink'"|"'line'"|"'green'"|"'vibrant_green'"|"'blue'"|"'nord_blue'"|"'yellow'"|"'sun'"|"'purple'"|"'dark_purple'"|"'teal'"|"'orange'"|"'cyan'"|"'pmenu_bg'"|"'folder_bg'"
--- @class Base46Base30ColorsTable
--- @field white string
--- @field darker_black string
--- @field black string
--- @field black2 string
--- @field grey string
--- @field grey_fg string
--- @field light_grey string
--- @field red string
--- @field baby_pink string
--- @field pink string
--- @field line string
--- @field green string
--- @field vibrant_green string
--- @field blue string
--- @field nord_blue string
--- @field yellow string
--- @field sun string
--- @field purple string
--- @field dark_purple string
--- @field teal string
--- @field orange string
--- @field cyan string
--- @field pmenu_bg string
--- @field folder_bg string

--- @alias Base46SyntaxColors "'special'"|"'fn'"|"'method'"|"'null'"|"'keyword'"|"'string'"|"'boolean'"|"'number'"|"'variable'"|"'constant'"|"'parameter'"|"'type'"|"'constructor'"|"'property'"|"'field'"|"'operator'"|"'attribute'"|"'tag'"|"'error'"

--- @class Base46SyntaxColorsTable
--- @field special string
--- @field fn string
--- @field method string
--- @field null string
--- @field keyword string
--- @field string string
--- @field boolean string
--- @field number string
--- @field variable string
--- @field constant string
--- @field parameter string
--- @field type string
--- @field constructor string
--- @field property string
--- @field field string
--- @field operator string
--- @field attribute string
--- @field tag string
--- @field error string
