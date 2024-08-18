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

M.synax = {
  -- some colors
}

M.type = "dark" -- this can be either dark or light

return M
```
