-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
  -- Enable or disable logging
  logging = true,
  -- Important things
  ensure_installed = {
    "prettier",
    "clangformat",
    "latexindent",
    "isort"
  },
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    -- Formatter configurations for filetype "lua" go here
    -- and will be executed in order
    lua = {
      -- "formatter.filetypes.lua" defines default configurations for the
      -- "lua" filetype
      require("formatter.filetypes.lua").stylua,

      -- You can also define your own configuration
      function()
        -- Supports conditional formatting
        if util.get_current_buffer_file_name() == "special.lua" then
          return nil
        end

        -- Full specification of configurations is down below and in Vim help
        -- files
        return {
          exe = "stylua",
          args = {
            "--search-parent-directories",
            "--stdin-filepath",
            util.escape_path(util.get_current_buffer_file_path()),
            "--",
            "-",
            stdin = true,
          },
        }
      end
    },
    cpp = {
      require("formatter.filetypes.cpp").clangformat
    },
    c = {
      require("formatter.filetypes.c").clangformat
    },
    cs = {
      require("formatter.filetypes.cs").clangformat
    },
    json = {
      require("formatter.filetypes.json").clangformat
    },
    java = {
      require("formatter.filetypes.java").clangformat
    },
    html = {
      require("formatter.filetypes.html").prettier
    },
    js = {
      require("formatter.filetypes.javascript").prettier
    },
    ts = {
      require("formatter.filetypes.typescript").prettier
    },
    css = {
      require("formatter.filetypes.css").prettier
    },
    tex = {
      require("formatter.filetypes.latex").latexindent
    },
    py = {
      require("formatter.filetypes.python").isort
    }
  }
}

