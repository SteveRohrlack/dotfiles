local theme = require("lualine.themes.iceberg_dark")

theme.normal.c.bg = "#16161C"

return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      theme = theme,
    },
  },
}
