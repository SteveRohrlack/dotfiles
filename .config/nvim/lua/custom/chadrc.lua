---@type ChadrcConfig 
local M = {}

M.ui = {
  theme = 'chadracula',
  transparency = true,

  statusline = {
    separator_style = "block",
  },

  hl_override = {
    TelescopeSelection = { bg = "nord_blue", fg = "black" },
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
