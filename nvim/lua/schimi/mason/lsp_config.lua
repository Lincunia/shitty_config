require("mason").setup({
  ui = {
    icons = {
      package_installed = "✔ ",
      package_pending = "",
      package_uninstalled = "⨯ "
    }
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
    "kotlin_language_server",
  }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- The setup of the language
require("lspconfig").lua_ls.setup { capabilities }
require("lspconfig").clangd.setup { capabilities }
require("lspconfig").ltex.setup { capabilities }
require("lspconfig").html.setup { capabilities }
require("lspconfig").cssls.setup { capabilities }
require("lspconfig").pylsp.setup { capabilities }
require("lspconfig").denols.setup { capabilities }
require("lspconfig").kotlin_language_server.setup { capabilities }

-- ...
