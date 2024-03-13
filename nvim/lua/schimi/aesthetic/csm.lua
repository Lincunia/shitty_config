require("catppuccin").setup({
	flavour = "mocha",
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
})

vim.cmd("colorscheme catppuccin")
