return {
  "folke/twilight.nvim",
  cmd = { "Twilight", "TwilightEnable", "TwilightDisable" },
  opts = {
    dimming = {
      alpha = 0.6,
    },
  },
  keys = {
    { "<leader>zf", "<cmd>TwilightEnable<cr>", desc = "focus fold" },
    { "<leader>zb", "<cmd>TwilightDisable<cr>", desc = "blur fold" },
  },
}
