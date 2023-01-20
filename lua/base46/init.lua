local utils = require('base46.utils')

--- @class Base46
local M = {}

--- @class Styles
--- @field cmp "default"|"bordered"|"atom"

--- @class Base46_Config
--- @field theme string
--- @field custom_highlights table
--- @field load_all_highlights boolean
--- @field transparency boolean
--- @field styles Styles
_G.base46_config = {
  theme = 'tokyonight',
  custom_highlights = {},
  load_all_highlights = true,
  transparency = false,
  styles = {
    cmp = 'default',
  },
}

_G.base46_colors = {}

--- @param type "base_30"|"base_16"|"syntax"|"polish_hl"|"type"
M.get_theme_tb = function(type)
  return _G.base46_colors[type]
end

--- @param group string|table
M.load_highlight = function(group)
  local highlights = {}

  if type(group) == 'string' then
    local ok
    ok, highlights = utils.r('base46.highlights.' .. group)

    if not ok then
      error('Can\'t find highlight: ' .. group)
      return
    end
  elseif type(group) == 'table' then
    highlights = vim.deepcopy(group)
  end

  local polish_hl = M.get_theme_tb('polish_hl')
  if polish_hl then
    for key, value in pairs(polish_hl) do
      if highlights[key] then
        highlights[key] = utils.merge(highlights[key], value)
      end
    end
  end

  if base46_config.transparency then
    for key, value in pairs(require('base46.highlights.transparency')) do
      if highlights[key] then
        highlights[key] = utils.merge(highlights[key], value)
      end
    end
  end

  if base46_config.custom_highlights then
    local overriden_hl = utils.turn_str_to_color(base46_config.custom_highlights)
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

M.set_colors = function(theme)
  local default_path = 'base46.themes.' .. theme
  local user_path = 'themes.' .. theme

  local ok_default, default_theme = true, require(default_path)
  local ok_user, user_theme = utils.r(user_path)

  if ok_user then
    _G.base46_colors = user_theme
  elseif ok_default then
    _G.base46_colors = default_theme
  else
    error('Can\'t find theme: ' .. theme)
  end
end

--- @param opts Base46_Config
M.setup = function(opts)
  _G.base46_config = utils.merge(base46_config, opts or {})

  M.set_colors(opts.theme)
  if vim.tbl_isempty(base46_colors) then
    return
  end

  require('base46.term')

  vim.opt.bg = require('base46').get_theme_tb('type') or 'dark'

  local highlights = require('base46.highlights')
  for hl, col in pairs(highlights) do
    vim.api.nvim_set_hl(0, hl, col)
  end
end

return M
