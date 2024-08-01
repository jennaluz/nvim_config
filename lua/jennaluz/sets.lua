local sets = {
    termguicolors = true,

	number = true,
	relativenumber = true,

	incsearch = true,
	showcmd = true,
	showmode = true,
	showtabline = 2,
	swapfile = false,

	scrolloff = 1,
	sidescroll = 1,
	sidescrolloff = 8,
	wrap = false,

	tabstop = 4,
	softtabstop = 4,
	shiftwidth = 4,
	expandtab = true,
}

for key, value in pairs(sets) do
	vim.opt[key] = value
end
