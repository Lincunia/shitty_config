local the_hour_of_usage = os.date("%H")
vim.o.background = "dark"
if the_hour_of_usage >= "06" and the_hour_of_usage <= "12" then
	vim.o.background = "light"
end

require("catppuccin").setup({
	background = {
		light = "latte",
		dark = "mocha",
	},
	transparent_background = false,
	show_end_of_buffer = false,
	term_colors = false,
	no_italic = false,
	no_bold = false,
	no_underline = false,
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = { "underline" },
		keywords = { "italic" },
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	custom_highlights = {},
	highlight_overrides = {},
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		notify = false,
		mini = {
			enabled = true,
			indentscope_color = "",
		},
		barbar = true,
		telescope = {
			enabled = true,
		},
		markdown = true,
		mason = false,
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
			},
			inlay_hints = {
				background = true,
			},
		},
	},
	color_overrides = {
		latte = {
			-- Taken from https://github.com/vihu
			base = "#fbf1c7",
			mantle = "#f9ebaf",
			crust = "#e0d39d",
			pink = "#bd5fa3",
			mauve = "#7a33d7",
			green = "#338022",
			teal = "#148389",
			yellow = "#a06514",
			peach = "#e45a09",
			text = "#2d2018",
			subtext1 = "#4b3628",
			subtext0 = "#5d4a3d",
			overlay2 = "#6e5e52",
			overlay1 = "#817268",
			overlay0 = "#93867e",
			surface2 = "#a59a93",
			surface1 = "#b7aea9",
			surface0 = "#c9c2be",
		},
		mocha = {
			base = "#1c1917",
			blue = "#22d3ee",
			green = "#86efac",
			flamingo = "#D6409F",
			lavender = "#DE51A8",
			pink = "#f9a8d4",
			red = "#fda4af",
			maroon = "#f87171",
			mauve = "#D19DFF",
			text = "#E8E2D9",
			sky = "#7ee6fd",
			yellow = "#fde68a",
			rosewater = "#f4c2c2",
			peach = "#fba8c4",
			teal = "#4fd1c5",
		},
	},
})

vim.cmd("colorscheme catppuccin")
