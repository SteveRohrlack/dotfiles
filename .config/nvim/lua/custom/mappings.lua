local M = {}
M.dap_go = {
  plugin = true,
  n = {
    ["<leader>gdb"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "toggle breakpoint at line",
    },
    ["<leader>gdv"] = {
      function ()
        local widgets = require("dap.ui.widgets");
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugger sidebar",
    },
    ["<leader>gdt"] = {
      function()
        require("dap-go").debug_test()
      end,
      "Debug go test"
    },
    ["<leader>gdl"] = {
      function()
        require("dap-go").debug_last()
      end,
      "Debug last go test"
    },
    ["<leader>gdr"] = {
      function()
        require("dap").continue()
      end,
      "Debug run"
    },
    ["<leader>gdc"] = {
      function()
        require("dap").continue()
      end,
      "Debug continue"
    },
    ["<leader>gds"] = {
      function()
        require("dap").terminate()
      end,
      "Debug stop"
    },
  },
}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd>TmuxNavigateLeft<cr>", "tmux move left" },
    ["<C-l>"] = { "<cmd>TmuxNavigateRight<cr>", "tmux move right" },
    ["<C-j>"] = { "<cmd>TmuxNavigateDown<cr>", "tmux move down" },
    ["<C-k>"] = { "<cmd>TmuxNavigateUp<cr>", "tmux move up" },
    ["J"] = { "5j", "move downwards 5 lines" },
    ["K"] = { "5k", "move upwards 5 lines" },
    ["gt"] = { ":tabnext<cr>", "navigate to next tab" },
    ["gT"] = { ":tabprevious<cr>", "navigate to previous tab" },
  },
}

return M
