local M = {}

function M.get_colors()
	vim.cmd([[ source $HOME/.cache/wal/colors-wal.vim ]])

	return {
		background = vim.g.background,
		background_alt = "#18181D",
		foreground = vim.g.color7,
		cursor = vim.g.cursor,
		color0 = vim.g.color0,
		color1 = vim.g.color1,
		color2 = vim.g.color2,
		color3 = vim.g.color3,
		color4 = vim.g.color4,
		color5 = vim.g.color5,
		color6 = vim.g.color7,
		color7 = "#9E9797",
		error = "#C81E1E",
		line_nr = "#4B4C56",
	}
end

return M
