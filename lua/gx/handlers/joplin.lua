local helper = require("gx.helper")

local M = {
  -- every filetype and filename
  filetype = nil,
  filename = nil,
}

-- navigate to neovim github plugin url
function M.handle(mode, line, _)
  local joplin_pattern = "resources/%w+"
  local joplin = helper.find(line, mode, joplin_pattern)
  if not joplin then
    return
  end
  return "file:///home/xuanan92/.config/joplin/" .. joplin_pattern
end

return M
