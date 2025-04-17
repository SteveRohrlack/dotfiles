return {
  "neovim/nvim-lspconfig",
  opts = function()
    local Keys = require("lazyvim.plugins.lsp.keymaps").get()
    vim.list_extend(Keys, {
      { "gr", false },
      { "grr", "<cmd>Telescope lsp_references<cr>", desc = "References", nowait = true },
    })
  end,
}
