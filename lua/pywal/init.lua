local M = {}
local core = require('pywal.core')
local highlights = require('pywal.highlights')

local load_colors = function()
  vim.opt.termguicolors = true
  local colors = core.get_colors()
  highlights.highlight_all(colors)
end

function M.setup()
  load_colors()
  --local wal_file = os.getenv("HOME") .. "/.cache/wal/colors-wal.vim"
  -- local watchfile = require('pywal.watchfile')
  -- watchfile.watch(wal_file, load_colors)
end

return M
