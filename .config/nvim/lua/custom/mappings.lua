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
return M
