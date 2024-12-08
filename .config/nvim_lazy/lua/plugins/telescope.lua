return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disable the keymap to grep files
    { "<leader>/", false },
    { "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "grep files" },
    {
      "<leader>ff",
      "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<cr>",
      desc = "find all the things",
    },
    { "<leader>fs", "<cmd>Telescope grep_string<cr>", desc = "grep string in cwd" },
    { "gr", "<cmd>Telescope lsp_references<cr>", desc = "find lsp references" },
  },
}
