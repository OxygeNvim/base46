--- @class Base46
_G.base46 = {
  utils = {},
  dir = vim.fn.fnamemodify(debug.getinfo(1, 'S').source:sub(2), ':p:h'),
  colors = {},
  loaded_highlights = {},
}

require('oxygen.base46.utils')

--- @param type "base_30"|"base_16"|"syntax"|"polish_hl"|"type"
base46.get_theme_tb = function(type)
  return base46.colors[type]
end

--- @param file_name string
--- @param a? boolean
base46.load_highlight = function(file_name, a)
  local ok, highlights = r('oxygen.base46.highlights.' .. file_name)
  if not ok then
    utils.logger.error('Can\'t find highlight: ' .. file_name)
    return {}
  end

  local polish_hl = base46.get_theme_tb('polish_hl')
  if polish_hl then
    for key, value in pairs(polish_hl) do
      if highlights[key] then
        highlights[key] = utils.merge(highlights[key], value)
      end
    end
  end

  if config.ui.highlights.override then
    local overriden_hl = base46.utils.turn_str_to_color(config.ui.highlights.override)
    for key, value in pairs(overriden_hl) do
      if highlights[key] then
        highlights[key] = utils.merge(highlights[key], value)
      end
    end
  end

  for hl_name, hl_opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, hl_name, hl_opts)
  end

  if not a then
    table.insert(base46.loaded_highlights, file_name)
  end
end

--- @param theme_name string
--- @param not_save_file? boolean
base46.change_theme = function(theme_name, not_save_file)
  if not not_save_file then
    utils.replace_word(vim.fn.stdpath('config') .. '/lua/config.lua', config.ui.theme, theme_name)
  end

  config.ui.theme = theme_name

  require('plenary.reload').reload_module('oxygen.base46')

  base46.set_colors(theme_name)

  for _, filename in pairs(base46.loaded_highlights) do
    base46.load_highlight(filename, true)
  end

  utils.logger.log('Changed theme to ' .. theme_name)
end

--- @param theme_name string
base46.set_colors = function(theme_name)
  local ok_theme, theme = r('oxygen.base46.themes.' .. theme_name)
  if ok_theme then
    base46.colors = theme
  else
    utils.logger.error('Can\'t find theme: ' .. theme)
  end
end

base46.main_highlights = function()
  require('oxygen.base46.terminal')

  base46.load_highlight('main')
  base46.load_highlight('syntax')
end

base46.setup = function()
  base46.set_colors(config.ui.theme)
  base46.main_highlights()
end

return base46
