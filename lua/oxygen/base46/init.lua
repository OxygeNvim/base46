local utils = require('oxygen.core.utils')

--- @class Base46
local M = {
  dir = vim.fn.fnamemodify(debug.getinfo(1, 'S').source:sub(2), ':p:h'),
  --- @type Base46ThemeColorsTable
  colors = {},
  --- @type table<string>
  loaded_highlights = {},
}

--- @return table<string>
M.get_themes = function()
  --- @type table<string>
  local themes = utils.filesystem.get_dir_contents(M.dir .. '/themes')

  for index, theme in pairs(themes) do
    if theme:sub(-#'.lua') == '.lua' then
      themes[index] = vim.fn.fnamemodify(vim.fn.fnamemodify(theme, ':t'), ':r')
    end
  end

  return themes
end

--- @param theme_name string
M.set_colors = function(theme_name)
  local ok_theme, theme = utils.r('oxygen.base46.themes.' .. theme_name)
  if ok_theme then
    M.colors = theme
  else
    utils.logger.error('Can\'t find theme: ' .. theme_name)
  end
end

--- @param type Base46ThemeField
---
--- @return Base46ThemeColors
M.get_theme_tb = function(type)
  return M.colors[type] or {}
end

--- @param file_name string
--- @param save_highlights_to_table? boolean
M.load_highlight = function(file_name, save_highlights_to_table)
  if save_highlights_to_table == nil then
    save_highlights_to_table = true
  end

  local file_path = 'oxygen.base46.highlights.' .. file_name

  package.loaded[file_path] = nil

  --- @type boolean, Base46HLGroups
  local ok_highlight, highlights = utils.r(file_path)
  if not ok_highlight then
    utils.logger.error('Can\'t find highlight: ' .. file_name)
    return {}
  end

  local polish_hl = M.get_theme_tb('polish_hl')
  if polish_hl then
    for key, value in pairs(polish_hl) do
      if highlights[key] then
        highlights[key] = table.merge(highlights[key], value)
      end
    end
  end

  if config.ui.highlights.override then
    for key, value in pairs(config.ui.highlights.override) do
      if highlights[key] then
        highlights[key] = table.merge(highlights[key], value)
      end
    end
  end

  for name, groups in pairs(highlights) do
    for opt, val in pairs(groups) do
      if
        (opt == 'fg' or opt == 'bg' or opt == 'sp') and not (val:sub(1, 1) == '#' or val == 'none' or val == 'NONE')
      then
        highlights[name][opt] = M.colors['base_30'][val]
      end
    end
  end

  for hl_name, hl_opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, hl_name, hl_opts)
  end

  if save_highlights_to_table and file_name then
    table.insert(M.loaded_highlights, file_name)
  end
end

--- @param theme_name string
--- @param save_file? boolean
--- @param log? boolean
M.change_theme = function(theme_name, save_file, log)
  if save_file == nil then
    save_file = true
  end

  if save_file then
    local config_path = vim.fn.stdpath('config') .. '/lua/config/init.lua'

    utils.filesystem.replace_string(config_path, config.ui.theme, theme_name)

    config.ui.theme = theme_name
  end

  M.set_colors(theme_name)

  for _, filename in pairs(M.loaded_highlights) do
    M.load_highlight(filename, false)
  end

  vim.api.nvim_exec_autocmds('ColorScheme', {})

  if log then
    utils.logger.log('Changed theme to ' .. theme_name)
  end
end

M.setup = function()
  M.set_colors(config.ui.theme)

  M.load_highlight('main')
  M.load_highlight('syntax')
end

return M
