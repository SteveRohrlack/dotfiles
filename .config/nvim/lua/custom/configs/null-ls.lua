local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormating", {})

local opts = {
  sources = {
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.goimports,
  },
  on_attach = function (client, bufnr)
    if not client.supports_method("textDocument/formatting") then
      return
    end

    vim.api.nvim_clear_autocmds({
      group = augroup,
      buffer = bufnr,
    })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function ()
       vim.lsp.buf.format({
          bufnr = bufnr,
        })
      end,
    })
  end,
}
return opts
