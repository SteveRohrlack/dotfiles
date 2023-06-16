local M = {}
M.dap_go = {
  plugin = true,
  n = {
    ["<leader>gdb"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>gdv"] = {
      function ()
        local widgets = require("dap.ui.widgets");
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugger sidebar",
    },
  },
}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd>TmuxNavigateLeft<cr>", "tmux move left" },
    ["<C-l>"] = { "<cmd>TmuxNavigateDown<cr>", "tmux move right" },
    ["<C-j>"] = { "<cmd>TmuxNavigateUp<cr>", "tmux move down" },
    ["<C-k>"] = { "<cmd>TmuxNavigateRight<cr>", "tmux move up" },
  }
}

return M
