require("mason-tool-installer").setup({
	ensure_installed = {
		"stylua",
		"prettier",
		"latexindent",
		"isort",
		"clang-format",
	},
})

require("conform").setup({
	notify_on_error = true,
	formatters_by_ft = {
		lua = { "stylua" },
		cpp = { "clang_format" },
		cc = { "clang_format" },
		c = { "clang_format" },
		java = { "clang_format" },
		python = { "isort" },
		tex = { "latexindent" },
		javascript = { "prettier" },
		html = { "prettier" },
		css = { "prettier" },
		json = { "prettier" },
		markdown = { "prettier" },
	},
	formatters = {
		clang_format = {
			prepend_args = { "--style={BasedOnStyle: GNU, IndentWidth: 4}" }
		},
        prettier = {
			prepend_args = { "--tab-width 4", "--use-tabs" }
		}
	},
})

vim.api.nvim_create_user_command("Format", function(args)
	local range = nil
	if args.count ~= -1 then
		local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
		range = {
			start = { args.line1, 0 },
			["end"] = { args.line2, end_line:len() },
		}
	end
	require("conform").format({ async = true, lsp_fallback = true, range = range })
end, { range = true })
