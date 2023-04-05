--- @param highlights table
--- @return table
base46.utils.turn_str_to_color = function(highlights)
  local _highlights = vim.deepcopy(highlights)
  local colors = base46.get_theme_tb('base_30')

  for _, groups in pairs(_highlights) do
    for k, v in pairs(groups) do
      if k == 'fg' or k == 'bg' then
        -- luacheck: ignore
        if v:sub(1, 1) == '#' or v == 'none' or v == 'NONE' then
        else
          _highlights[k] = colors[v]
        end
      end
    end
  end

  return _highlights
end

--- @return table
base46.utils.get_themes = function()
  local themes = utils.filesystem.get_dir_contents(base46.dir .. '/themes')

  for index, theme in pairs(themes) do
    themes[index] = vim.fn.fnamemodify(vim.fn.fnamemodify(theme, ':t'), ':r')
  end

  return themes
end
