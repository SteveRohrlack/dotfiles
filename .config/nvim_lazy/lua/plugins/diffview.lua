return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewToggleFiles" },
  keys = {
    {
      "<leader>gD",
      function()
        if next(require("diffview.lib").views) == nil then
          vim.cmd("DiffviewOpen")
        else
          vim.cmd("DiffviewClose")
        end
      end,
      desc = "diff view",
    },
    { "<leader>gH", "<cmd>DiffviewFileHistory %<cr>", desc = "diff view" },
  },
}
