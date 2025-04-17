return {
  "olimorris/codecompanion.nvim",
  enabled = false,
  config = true,
  opts = {
    -- adapters = {
    --   copilot = function()
    --     return require("codecompanion.adapters").extend("copilot", {
    --       schema = {
    --         model = {
    --           default = "claude-3.7-sonnet",
    --         },
    --       },
    --     })
    --   end,
    -- },
    strategies = {
      cmd = {
        adapter = "copilot",
      },
      chat = {
        adapter = "copilot",
      },
      inline = {
        adapter = "copilot",
      },
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
}
