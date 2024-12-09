return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewToggleFiles" },
  keys = {
    { "<leader>gD", "<cmd>DiffviewOpen<cr>", desc = "diff view" },
    { "<leader>gH", "% <cmd>DiffviewFileHistory<cr>", desc = "diff view" },
  },
}
