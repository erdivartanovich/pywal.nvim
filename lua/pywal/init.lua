local M = {}
local core = require('pywal.core')
local highlights = require('pywal.highlights')
local wal_file = os.getenv("HOME") .. "/.cache/wal/colors-wal.vim"

local load_colors = function()
  print("File changed!", wal_file)
  local colors = core.get_colors()
  highlights.highlight_all(colors)
end

function M.setup()
  vim.opt.termguicolors = true
  load_colors()
  local watchfile = require('pywal.watchfile')
  watchfile.watch(wal_file, load_colors)
end

return M
