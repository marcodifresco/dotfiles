-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Options
local options = {
	-- Sets the number on the left-hand side.
	number = true,
	-- Sets the relative number on the left-hand side.
	relativenumber = true,
	-- Sets the number of whitespace a \t char is worth (hitting tab key on your keyboard).
	tabstop = 4,
	-- Sets the number of whitespaces which is considered as an indent.
	shiftwidth = 4,
	-- Replaces \t with whitespaces.
	expandtab = true,
}

-- Appends vim.opt to all of the options we defined above; using a loop.
for k, v in pairs(options) do
	vim.opt[k] = v
end
