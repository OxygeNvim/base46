--- @class Base46
_G.base46 = {
  cache_dir = vim.fn.stdpath('cache') .. '/oxygen/base46',
  dir = vim.fn.fnamemodify(debug.getinfo(1, 'S').source:sub(2), ':p:h'),
  colors = {},
  loaded_highlights = {},
}

--- @param type "base_30"|"base_16"|"syntax"|"polish_hl"|"type"
base46.get_theme_tb = function(type)
  return base46.colors[type]
end

--- @param file_name string
--- @return table
base46.get_highlights = function(file_name)
  local ok, highlights = r('oxygen.base46.highlights.' .. file_name)
  if not ok then
    utils.logger.error('Can\'t find highlight: ' .. file_name)
    return {}
  end

  return highlights
end

--- @param file_name string
--- @return table
base46.extend_hl = function(file_name)
  local highlights = base46.get_highlights(file_name)

  local polish_hl = base46.get_theme_tb('polish_hl')
  if polish_hl then
    for key, value in pairs(polish_hl) do
      if highlights[key] then
        highlights[key] = utils.merge(highlights[key], value)
      end
    end
  end

  if config.ui.highlights.override then
    local overriden_hl = base46.turn_str_to_color(config.ui.highlights.override)
    for key, value in pairs(overriden_hl) do
      if highlights[key] then
        highlights[key] = utils.merge(highlights[key], value)
      end
    end
  end

  return highlights
end

--- @param highlights table
--- @return table
base46.turn_str_to_color = function(highlights)
  local tb = vim.deepcopy(highlights)
  local colors = base46.get_theme_tb('base_30')

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

--- @param highlights table
--- @return string
base46.highlight_to_str = function(highlights)
  local content = ''

  for group, hl_values in pairs(highlights) do
    local hl_name = '"' .. group .. '",'
    local hl_opts = ''

    for name, value in pairs(hl_values) do
      local value_str = ((type(value)) == 'boolean' or type(value) == 'number') and tostring(value)
          or '"' .. value .. '"'
      hl_opts = hl_opts .. name .. '=' .. value_str .. ','
    end

    content = content .. 'vim.api.nvim_set_hl(0, ' .. hl_name .. '{' .. hl_opts .. '})'
  end

  return content
end

--- @return table
base46.get_themes = function()
  local themes = utils.filesystem.get_dir_contents(base46.dir .. '/themes')

  for index, theme in pairs(themes) do
    themes[index] = vim.fn.fnamemodify(vim.fn.fnamemodify(theme, ':t'), ':r')
  end

  return themes
end

--- @param file_name string
--- @param highlights table
base46.compile_file = function(file_name, highlights)
  local bg = 'vim.opt.bg="' .. base46.get_theme_tb('type') .. '"'
  local main = file_name == 'main' and bg or ''

  local lines = 'base46.compiled = string.dump(function() '
      .. main
      .. ' '
      .. base46.highlight_to_str(highlights)
      .. ' end)'

  loadstring(lines, '=')()

  utils.filesystem.write_file(base46.cache_dir .. '/compiled/' .. file_name, base46.compiled)
end

base46.compile = function()
  for _, file in ipairs(utils.filesystem.get_dir_contents(base46.dir .. '/highlights')) do
    local filename = vim.fn.fnamemodify(file, ':r')
    base46.compile_file(filename, base46.extend_hl(filename))
  end
end
--- @param file_name string
--- @param a? boolean
base46.load_highlight = function(file_name, a)
  dofile(base46.cache_dir .. '/compiled/' .. file_name)

  if not a then
    table.insert(base46.loaded_highlights, file_name)
  end
end

--- @param theme_name string
base46.change_theme = function(theme_name)
  utils.filesystem.write_file(base46.cache_dir .. '/theme', theme_name)

  require('plenary.reload').reload_module('oxygen.base46')

  base46.set_colors(theme_name)
  base46.compile()

  for _, filename in pairs(base46.loaded_highlights) do
    base46.load_highlight(filename, true)
  end

  utils.filesystem.write_file(base46.cache_dir .. '/theme', theme_name)

  utils.logger.log('Changed theme to ' .. theme_name)
end

--- @param theme_name string
base46.set_colors = function(theme_name)
  local ok_theme, theme = r('oxygen.base46.themes.' .. theme_name)

  if ok_theme then
    base46.colors = theme

    require('oxygen.base46.terminal')

    base46.load_highlight('main')
    base46.load_highlight('syntax')
  else
    utils.logger.error('Can\'t find theme: ' .. theme)
  end
end

base46.setup = function()
  local theme = config.ui.theme

  if
      not utils.filesystem.check_dir(base46.cache_dir)
      or not utils.filesystem.check_dir(base46.cache_dir .. '/compiled')
  then
    utils.filesystem.create_dir(base46.cache_dir)
    utils.filesystem.create_dir(base46.cache_dir .. '/compiled')

    base46.compile()
  end

  if not utils.filesystem.check_file(base46.cache_dir .. '/theme') then
    utils.filesystem.write_file(base46.cache_dir .. '/theme', theme)
  end

  theme = utils.filesystem.get_file(base46.cache_dir .. '/theme')
  base46.set_colors(theme)
end

return base46
