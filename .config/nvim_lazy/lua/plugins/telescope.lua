local telescope = require("telescope.builtin")

return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disable the keymap to grep files
    { "<leader>/", false },
    -- { "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "grep files" },
    {
      "<leader>fw",
      function()
        telescope.live_grep({
          prompt_title = "Live Grep",
          additional_args = { "--smart-case" },
        })
      end,
      desc = "grep files",
    },
    { "<leader>fm", "<cmd>Telescope marks<cr>", desc = "marks" },
    {
      "<leader>ff",
      "<cmd>Telescope find_files<cr>",
      desc = "find all the things",
    },
    {
      "<leader>f.",
      "<cmd>Telescope resume<cr>",
      desc = "resume last search",
    },
    -- {
    --   "<leader>ff",
    --   "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<cr>",
    --   desc = "find all the things",
    -- },

    -- { "<leader>fs", "<cmd>Telescope grep_string<cr>", desc = "grep string in cwd" },
    -- { "gr", "<cmd>Telescope lsp_references<cr>", desc = "find lsp references" },
  },
  opts = {
    pickers = {
      find_files = {
        hidden = true,
        no_ignore = true,
        follow = true,
      },
    },
  },
}
