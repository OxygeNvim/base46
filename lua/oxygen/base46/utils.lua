utils.hex2rgb = function(hex)
  local hash = string.sub(hex, 1, 1) == '#'
  if string.len(hex) ~= (7 - (hash and 0 or 1)) then
    return nil
  end

  local r = tonumber(hex:sub(2 - (hash and 0 or 1), 3 - (hash and 0 or 1)), 16)
  local g = tonumber(hex:sub(4 - (hash and 0 or 1), 5 - (hash and 0 or 1)), 16)
  local b = tonumber(hex:sub(6 - (hash and 0 or 1), 7 - (hash and 0 or 1)), 16)

  return r, g, b
end

utils.rgb2hex = function(r, g, b)
  return string.format('#%02x%02x%02x', math.floor(r), math.floor(g), math.floor(b))
end

utils.hsl2rgb_helper = function(p, q, a)
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

utils.hsl2rgb = function(h, s, l)
  local t1, t2, r, g, b

  h = h / 60
  if l <= 0.5 then
    t2 = l * (s + 1)
  else
    t2 = l + s - (l * s)
  end

  t1 = l * 2 - t2
  r = utils.hsl2rgb_helper(t1, t2, h + 2) * 255
  g = utils.hsl2rgb_helper(t1, t2, h) * 255
  b = utils.hsl2rgb_helper(t1, t2, h - 2) * 255

  return r, g, b
end

utils.rgb2hsl = function(r, g, b)
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

utils.hex2hsl = function(hex)
  local r, g, b = utils.hex2rgb(hex)

  return utils.rgb2hsl(r, g, b)
end

utils.hsl2hex = function(h, s, l)
  local r, g, b = utils.hsl2rgb(h, s, l)

  return utils.rgb2hex(r, g, b)
end

utils.change_hex_hue = function(hex, percent)
  local h, s, l = utils.hex2hsl(hex)
  h = h + (percent / 100)

  if h > 360 then
    h = 360
  end
  if h < 0 then
    h = 0
  end

  return utils.hsl2hex(h, s, l)
end

utils.change_hex_saturation = function(hex, percent)
  local h, s, l = utils.hex2hsl(hex)
  s = s + (percent / 100)

  if s > 1 then
    s = 1
  end
  if s < 0 then
    s = 0
  end

  return utils.hsl2hex(h, s, l)
end

utils.change_hex_lightness = function(hex, percent)
  local h, s, l = utils.hex2hsl(hex)
  l = l + (percent / 100)

  if l > 1 then
    l = 1
  end
  if l < 0 then
    l = 0
  end

  return utils.hsl2hex(h, s, l)
end

utils.blend = function(foreground, background, alpha)
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
utils.turn_str_to_color = function(highlights)
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
