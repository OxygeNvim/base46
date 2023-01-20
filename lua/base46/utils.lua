local M = {}

----- @param ... table
----- @return table
M.merge = function(...)
  return vim.tbl_deep_extend('force', ...)
end

----- @param mod string
----- @return boolean
----- @return unknown
M.r = function(mod)
  return pcall(require, mod)
end

--- Convert a hex color value to RGB
---
--- @param hex string: The hex color value
---
--- @return number?: Red (0-255)
--- @return number?: Green (0-255)
--- @return number?: Blue (0-255)
M.hex2rgb = function(hex)
  local hash = string.sub(hex, 1, 1) == '#'
  if string.len(hex) ~= (7 - (hash and 0 or 1)) then
    return nil
  end

  local r = tonumber(hex:sub(2 - (hash and 0 or 1), 3 - (hash and 0 or 1)), 16)
  local g = tonumber(hex:sub(4 - (hash and 0 or 1), 5 - (hash and 0 or 1)), 16)
  local b = tonumber(hex:sub(6 - (hash and 0 or 1), 7 - (hash and 0 or 1)), 16)

  return r, g, b
end

--- Convert an RGB color value to hex
---
--- @param r number: Red (0-255)
--- @param g number: Green (0-255)
--- @param b number: Blue (0-255)
---
--- @return string: The hexadecimal string representation of the color
M.rgb2hex = function(r, g, b)
  return string.format('#%02x%02x%02x', math.floor(r), math.floor(g), math.floor(b))
end

--- Helper function to convert a HSL color value to RGB
--- Not to be used directly, use M.hsl2rgb instead
M.hsl2rgb_helper = function(p, q, a)
  if a < 0 then
    a = a + 6
  end
  if a >= 6 then
    a = a - 6
  end
  if a < 1 then
    return (q - p) * a + p
  elseif a < 3 then
    return q
  elseif a < 4 then
    return (q - p) * (4 - a) + p
  else
    return p
  end
end

--- Convert a HSL color value to RGB
---
--- @param h number: Hue (0-360)
--- @param s number: Saturation (0-1)
--- @param l number: Lightness (0-1)
---
--- @return number: Red (0-255)
--- @return number: Green (0-255)
--- @return number: Blue (0-255)
M.hsl2rgb = function(h, s, l)
  local t1, t2, r, g, b

  h = h / 60
  if l <= 0.5 then
    t2 = l * (s + 1)
  else
    t2 = l + s - (l * s)
  end

  t1 = l * 2 - t2
  r = M.hsl2rgb_helper(t1, t2, h + 2) * 255
  g = M.hsl2rgb_helper(t1, t2, h) * 255
  b = M.hsl2rgb_helper(t1, t2, h - 2) * 255

  return r, g, b
end

--- Convert an RGB color value to HSL
---
--- @param r number: Red (0-255)
--- @param g number: Green (0-255)
--- @param b number: Blue (0-255)
---
--- @return number: Hue (0-360)
--- @return number: Saturation (0-1)
--- @return number: Lightness (0-1)
M.rgb2hsl = function(r, g, b)
  local min, max, l, s, maxcolor, h
  r, g, b = r / 255, g / 255, b / 255

  min = math.min(r, g, b)
  max = math.max(r, g, b)
  maxcolor = 1 + (max == b and 2 or (max == g and 1 or 0))

  if maxcolor == 1 then
    h = (g - b) / (max - min)
  elseif maxcolor == 2 then
    h = 2 + (b - r) / (max - min)
  elseif maxcolor == 3 then
    h = 4 + (r - g) / (max - min)
  end

  if not rawequal(type(h), 'number') then
    h = 0
  end

  h = h * 60

  if h < 0 then
    h = h + 360
  end

  l = (min + max) / 2

  if min == max then
    s = 0
  else
    if l < 0.5 then
      s = (max - min) / (max + min)
    else
      s = (max - min) / (2 - max - min)
    end
  end

  return h, s, l
end

--- Convert a hex color value to HSL
---
--- @param hex string: The hex color value
---
--- @return number: The HLS color value
--- @return number: The HLS color value
--- @return number: The HLS color value
M.hex2hsl = function(hex)
  local r, g, b = M.hex2rgb(hex)

  return M.rgb2hsl(r, g, b)
end

--- Convert a HSL color value to hex
---
--- @param h number: Hue (0-360)
--- @param s number: Saturation (0-1)
--- @param l number: Lightness (0-1)
---
--- @return string: The hex color value
M.hsl2hex = function(h, s, l)
  local r, g, b = M.hsl2rgb(h, s, l)

  return M.rgb2hex(r, g, b)
end

--- Change the hue of a color by a given amount
--- @param hex string: The hex color value
--- @param percent number: The amount to change the hue.
---               Negative values decrease the hue, positive values increase it.
---
--- @return string: The hex color value
M.change_hex_hue = function(hex, percent)
  local h, s, l = M.hex2hsl(hex)
  h = h + (percent / 100)

  if h > 360 then
    h = 360
  end
  if h < 0 then
    h = 0
  end

  return M.hsl2hex(h, s, l)
end

--- Desaturate or saturate a color by a given percentage
---
--- @param hex string: The hex color value
--- @param percent number: The percentage to desaturate or saturate the color.
---                Negative values desaturate the color, positive values saturate it
---
--- @return string: The hex color value
M.change_hex_saturation = function(hex, percent)
  local h, s, l = M.hex2hsl(hex)
  s = s + (percent / 100)

  if s > 1 then
    s = 1
  end
  if s < 0 then
    s = 0
  end

  return M.hsl2hex(h, s, l)
end

--- Lighten or darken a color by a given percentage
--- @param hex string: The hex color value
--- @param percent number: The percentage to lighten or darken the color.
---                Negative values darken the color, positive values lighten it
---
--- @return string: The hex color value
M.change_hex_lightness = function(hex, percent)
  local h, s, l = M.hex2hsl(hex)
  l = l + (percent / 100)

  if l > 1 then
    l = 1
  end
  if l < 0 then
    l = 0
  end

  return M.hsl2hex(h, s, l)
end

--- @param foreground string: Foreground color
--- @param background string: Background color
--- @param alpha number|string: Number between 0 and 1. 0 results in bg, 1 results in fg
---
--- @return string
M.blend = function(foreground, background, alpha)
  local function hexToRgb(c)
    c = string.lower(c)
    return { tonumber(c:sub(2, 3), 16), tonumber(c:sub(4, 5), 16), tonumber(c:sub(6, 7), 16) }
  end

  alpha = type(alpha) == 'string' and (tonumber(alpha, 16) / 0xff) or alpha
  local bg = hexToRgb(background)
  local fg = hexToRgb(foreground)

  local blendChannel = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format('#%02x%02x%02x', blendChannel(1), blendChannel(2), blendChannel(3))
end

--- @param highlights table
M.turn_str_to_color = function(highlights)
  local tb = vim.deepcopy(highlights)
  local colors = require('base46').get_theme_tb('base_30')

  for _, groups in pairs(tb) do
    for k, v in pairs(groups) do
      if k == 'fg' or k == 'bg' then
        -- luacheck: ignore
        if v:sub(1, 1) == '#' or v == 'none' or v == 'NONE' then
        else
          groups[k] = colors[v]
        end
      end
    end
  end

  return tb
end

return M
