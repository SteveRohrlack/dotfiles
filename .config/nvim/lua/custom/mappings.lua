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
  },
}

return M
