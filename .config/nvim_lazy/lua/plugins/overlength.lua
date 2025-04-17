return {
  "lcheylus/overlength.nvim",
  enabled = false,
  opts = {
    default_overlength = 100,
    disable_ft = {
      "qf",
      "help",
      "man",
      "checkhealth",
      "lazy",
      "packer",
      "NvimTree",
      "Telescope",
      "WhichKey",
      "lazygit",
    },
    textwidth_mode = 2,
  },
  -- ft = "go,md",
  keys = {
    {
      "<leader>uo",
      function()
        require("overlength").toggle()
      end,
      desc = "Toggle overlength",
    },
  },
}
