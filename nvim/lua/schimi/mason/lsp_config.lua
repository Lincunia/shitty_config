require("mason").setup({
	ui = {
		icons = {
			package_installed = "✔ ",
			package_pending = "",
			package_uninstalled = "⨯ ",
		},
	},
})
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"clangd",
		"ltex",
		"cssls",
		"pylsp",
		"denols",
		"jdtls",
		"kotlin_language_server",
	},
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- The setup of the language
require("lspconfig").denols.setup({ capabilities })
require("lspconfig").clangd.setup({ capabilities })
require("lspconfig").cssls.setup({ capabilities })
require("lspconfig").kotlin_language_server.setup({ capabilities })
require("lspconfig").ltex.setup({
	settings = {
		ltex = {
			language = "auto",
		},
	},
})

-- Just because of the annoying "Undefined global `vim`"
require("lspconfig").lua_ls.setup({
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = {
					"vim",
					"require",
				},
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
})
require("lspconfig").pylsp.setup({ capabilities })
require("lspconfig").jdtls.setup({ capabilities })

-- ...
