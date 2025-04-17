return {
  "mfussenegger/nvim-dap",
  keys = {
    {
      "<F5>",
      function()
        require("dap").continue()
      end,
      desc = "Run/Continue",
    },
    {
      "<S-F5>",
      function()
        require("dap").run_to_cursor()
      end,
      desc = "Run to Cursor",
    },
    {
      "<F7>",
      function()
        require("dap").step_into()
      end,
      desc = "Step Into",
    },
    {
      "<F8>",
      function()
        require("dap").step_over()
      end,
      desc = "Step Over",
    },
    {
      "<S-F8>",
      function()
        require("dap").step_out()
      end,
      desc = "Step Out",
    },
    -- mnemonic custom keys
    {
      "<leader>i",
      function()
        require("dap").step_into()
      end,
      desc = "Step Into",
    },
    {
      "<leader>o",
      function()
        require("dap").step_over()
      end,
      desc = "Step Over",
    },
  },
}
