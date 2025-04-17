return {
  "olivercederborg/poimandres.nvim",
  lazy = false,
  priority = 1000,
  enabled = false,
  config = function()
    local p = require("poimandres.palette")
    local prompt = p.background1
    require("poimandres").setup({
      disable_background = true,
      disable_italics = true,
      highlight_groups = {
        LspReferenceText = { bg = p.teal3, fg = p.white },
        LspReferenceRead = { bg = p.teal3, fg = p.white },
        LspReferenceWrite = { bg = p.teal3, fg = p.white },

        TelescopeNormal = {
          bg = p.background3,
          fg = p.text,
        },
        TelescopeBorder = {
          bg = p.background3,
          fg = p.background3,
        },
        TelescopePromptNormal = {
          bg = prompt,
        },
        TelescopePromptBorder = {
          bg = prompt,
          fg = prompt,
        },
        TelescopePromptTitle = {
          bg = prompt,
          fg = prompt,
        },
        TelescopePreviewTitle = {
          bg = p.background3,
          fg = p.background3,
        },
        TelescopeResultsTitle = {
          bg = p.background3,
          fg = p.background3,
        },
      },
    })
  end,
}
