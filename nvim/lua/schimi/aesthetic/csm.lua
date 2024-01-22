local status_ok, _ = pcall(vim.cmd, "colorscheme kanagawa")
if not status_ok then
  pcall(vim.cmd, "colorscheme desert")
  return
end

if os.date("%H")<"12" and os.date("%H")>="06" then
require("kanagawa").load("lotus")
end

-- require'kanagawa'.setup({ overrides = overrides, colors = my_colors })

require('kanagawa').setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = { italic = true },
    keywordStyle = { italic = true },
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = false,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    --[[
    -- add/modify theme and palette colors
    colors = {
        palette = {
        },
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    -- add/modify highlights
    overrides = function(colors)
        return {}
    end,
    --]]
    theme = "dragon",              -- Load "wave" theme when 'background' option is not set
    background = {               -- map the value of 'background' option to a theme
        dark = "wave",           -- try "dragon" !
        light = "lotus"
    },
})
