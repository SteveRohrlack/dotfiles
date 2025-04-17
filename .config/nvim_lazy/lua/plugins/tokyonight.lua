return {
  "tokyonight.nvim",
  enabled = false,
  opts = {
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
    on_highlights = function(hl, c)
      -- telescope without border
      local prompt = "#2d3149"
      hl.TelescopeNormal = {
        bg = c.bg_dark,
        fg = c.fg_dark,
      }
      hl.TelescopeBorder = {
        bg = c.bg_dark,
        fg = c.bg_dark,
      }
      hl.TelescopePromptNormal = {
        bg = prompt,
      }
      hl.TelescopePromptBorder = {
        bg = prompt,
        fg = prompt,
      }
      hl.TelescopePromptTitle = {
        bg = prompt,
        fg = prompt,
      }
      hl.TelescopePreviewTitle = {
        bg = c.bg_dark,
        fg = c.bg_dark,
      }
      hl.TelescopeResultsTitle = {
        bg = c.bg_dark,
        fg = c.bg_dark,
      }
      -- customize line number
      local lineNr = "#707aa8"
      hl.LineNrAbove = {
        fg = lineNr,
      }
      hl.LineNrBelow = {
        fg = lineNr,
      }
      -- find grey out
      hl.FlashBackdrop = {
        fg = "#8189ab",
      }
      -- code comments
      hl.Comment = {
        fg = lineNr,
      }
      hl.CursorLine = {
        bg = "#26293e",
      }
    end,
  },
}
