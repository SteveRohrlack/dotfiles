return {
  "stevearc/oil.nvim",
  opts = {
    delete_to_trash = true,
    view_options = {
      show_hidden = true,
    }
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "-", function ()
      require("oil").open()
    end, desc = "Open parent directory view" },
  },
}
