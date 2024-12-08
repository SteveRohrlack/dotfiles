return {
  "sindrets/diffview.nvim",
  cmd = {"DiffviewOpen", "DiffviewToggleFiles"},
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "diff view" },
    { "<leader>gh", "% <cmd>DiffviewFileHistory<cr>", desc = "diff view" },
  },
}
