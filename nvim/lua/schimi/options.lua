local options = {
	backup = false,
	-- creates a backup file
	clipboard = "unnamedplus",
	completeopt = { "menuone", "noselect" },
	conceallevel = 0,
	fileencoding = "utf-8",
	hlsearch = true,
	ignorecase = true,
	pumheight = 10,
	smartcase = true,
	smartindent = true,
	splitbelow = true,
	splitright = true,
	termguicolors = true,
	timeoutlen = 1000,
	undofile = true,
	updatetime = 300,
	expandtab = true,
	shiftwidth = 2,
	tabstop = 2,
	cursorline = true,
	number = true,
	rnu = true,
	numberwidth = 2,
	signcolumn = "yes",
	scrolloff = 8,
	sidescrolloff = 8,
	colorcolumn = "80",
	guifont = "monospace:h17",
}

vim.cmd("syntax on")

for k, v in pairs(options) do
	vim.opt[k] = v
end

-- vim.cmd "set whichwrap+=<,>,[,],h,l"
-- vim.cmd [[set iskeyword+=-]]
-- vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
