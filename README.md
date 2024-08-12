<h1 align="center">base46</h1>
<h2 align="center">Theme plugin for OxygeNvim</h2>

<p align="center">
  <img alt="Stargazers" src="https://img.shields.io/github/stars/OxygeNvim/base46?style=for-the-badge&colorA=0b1221&colorB=ff8e8e" />
  <img alt="Last commit" src="https://img.shields.io/github/last-commit/OxygeNvim/base46?style=for-the-badge&colorA=0b1221&colorB=BDB0E4" />
  <img alt="Issues" src="https://img.shields.io/github/issues/OxygeNvim/base46?style=for-the-badge&colorA=0b1221&colorB=FBC19D" />
</p>

> ⚠️  Warning: This plugin only works with OxygeNvim!

## Adding new themes

1. Go to lua/oxygen/base46/themes and add your file, ex: mytheme.lua

```lua
local M = {}

M.base_30 = {
  -- some colors
}

M.base_16 = {
  -- some colors
}

M.type = "dark" -- this can be either dark or light

return M
```

2. Add your theme to lua/oxygen/base46/types.lua

## Understanding theme variables

- Read the following for base_16 variables https://github.com/chriskempson/base16/blob/master/styling.md
- The following variables are for base_30

```
black = usually your theme bg
darker_black = 6% darker than black
black2 = 6% lighter than black

onebg = 10% lighter than black
onebg2 = 19% lighter than black
onebg3 = 27% lighter than black

grey = 40% lighter than black (the % here depends so choose the perfect grey!)
grey_fg = 10% lighter than grey
grey_fg2 = 20% lighter than grey
light_grey = 28% lighter than grey

baby_pink = 15% lighter than red or any babypink color you like!
line = 15% lighter than black

nord_blue = 13% darker than blue
sun = 8% lighter than yellow

lightbg = 13% lighter than statusline_bg
lightbg2 = 7% lighter than statusline_bg

folder_bg = blue color

(note: the above values are approximate values so its not compulsory that you have to use those exact numbers, test your themes)
```

## Credits
- [NvChad/base46](https://github.com/NvChad/base46)
- [norcalli/nvim-base16.lua](https://github.com/norcalli/nvim-base16.lua)
