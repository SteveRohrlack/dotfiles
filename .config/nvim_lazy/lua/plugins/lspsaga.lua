return {
  "nvimdev/lspsaga.nvim",
  opts = {
    lightbulb = {
      enable = false,
    },
    outline = {
      win_width = 40,
    },
    ui = {
      border = "single",
    },
  },
  ft = "go,php",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "<leader>x;", "<cmd>Lspsaga diagnostic_jump_next<CR>", desc = "next diagnostic" },
    { "<leader>x,", "<cmd>Lspsaga diagnostic_jump_prev<CR>", desc = "previous diagnostic" },
    { "<leader>gr", "<cmd>Lspsaga rename<CR>", desc = "lsp rename" },
    { "<leader>gd", "<cmd>Lspsaga peek_definition<CR>", desc = "peek definition" },
  },
}
