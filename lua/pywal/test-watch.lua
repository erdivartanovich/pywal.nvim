--local wal_file = os.getenv("HOME") .. "/.cache/wal/colors-wal.vim"
local wal_file = "/tmp/watch.txt"

local function on_change(err, fname, status)
	print("File changed!", fname)
end

local watchfile = require('watchfile')
watchfile.watch(wal_file, on_change)
