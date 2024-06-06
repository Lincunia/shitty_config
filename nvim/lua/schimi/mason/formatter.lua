require('mason-tool-installer').setup {
  ensure_installed = {
		"stylua",
		"prettier",
		"latexindent",
		"isort",
		"clang-format",
	},
}

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		cpp = { "clang_format" },
		cc = { "clang_format" },
		c = { "clang_format" },
		java = { "clang_format" },
		python = { "isort", "black" },
		latex = { "latexindent" },
		javascript = { { "prettierd", "prettier" } },
		html = { { "prettierd", "prettier" } },
		css = { { "prettierd", "prettier" } },
		json = { { "prettierd", "prettier" } },
		markdown = { { "prettierd", "prettier" } },
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
