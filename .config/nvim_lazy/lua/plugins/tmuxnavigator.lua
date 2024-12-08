return {
  "christoomey/vim-tmux-navigator",
  lazy = false,
  keys = {
    { "<C-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "tmux move left" },
    { "<C-l>", "<cmd>TmuxNavigateRight<cr>", desc = "tmux move right" },
    { "<C-j>", "<cmd>TmuxNavigateDown<cr>", desc = "tmux move down" },
    { "<C-k>", "<cmd>TmuxNavigateUp<cr>", desc = "tmux move up" },
  },
}
