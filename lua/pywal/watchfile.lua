local uv = vim.loop

local w = uv.new_fs_event()

local function watch_file(fname, callback)
	local fullpath = vim.api.nvim_call_function(
		'fnamemodify', { fname, ':p' })
	w:start(fullpath, {}, vim.schedule_wrap(function(...)
		callback(...)
	end))
end


local M = {
	watch = watch_file
}

return M
