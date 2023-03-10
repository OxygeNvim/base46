require('oxygen.base46.utils')

--- @class Base46
_G.base46 = {}

base46.colors = {}

--- @param type "base_30"|"base_16"|"syntax"|"polish_hl"|"type"
base46.get_theme_tb = function(type)
  return base46.colors[type]
end

--- @param group string|table
base46.load_highlight = function(group)
  local highlights = {}

  if type(group) == 'string' then
    local ok
    ok, highlights = r('oxygen.base46.highlights.' .. group)

    if not ok then
      error('Can\'t find highlight: ' .. group)
      return
    end
  elseif type(group) == 'table' then
    highlights = vim.deepcopy(group)
  end

  local polish_hl = base46.get_theme_tb('polish_hl')
  if polish_hl then
    for key, value in pairs(polish_hl) do
      if highlights[key] then
        highlights[key] = utils.merge(highlights[key], value)
      end
    end
  end

  if config.ui.override_highlights then
    local overriden_hl = utils.turn_str_to_color(config.ui.override_highlights)
    for key, value in pairs(overriden_hl) do
      if highlights[key] then
        highlights[key] = utils.merge(highlights[key], value)
      end
    end
  end

  for hl, col in pairs(highlights) do
    vim.api.nvim_set_hl(0, hl, col)
  end
end

base46.set_colors = function(theme_name)
  local ok_theme, theme = r('oxygen.base46.themes.' .. theme_name)

  if ok_theme then
    base46.colors = theme

    vim.opt.bg = theme['type'] or 'dark'

    require('oxygen.base46.terminal')

    base46.load_highlight('main')
    base46.load_highlight('syntax')
  else
    error('Can\'t find theme: ' .. theme)
  end
end

base46.setup = function()
  base46.set_colors(config.ui.theme)
end

return base46
