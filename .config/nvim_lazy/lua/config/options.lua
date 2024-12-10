-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vim.cmd('au TextYankPost * silent! lua vim.highlight.on_yank()')
-- vim.wo.relativenumber = true

-- vim.fn.sign_define("DapBreakpoint", { text = "⛔️" })
-- vim.fn.sign_define("DapBreakpointRejected", { text = "🚫" })
-- vim.fn.sign_define("DapStopped", { text = "📌" })
-- vim.fn.sign_define("DapLogPoint", { text = "⛳︎" })
-- vim.fn.sign_define("DapBreakpointCondition", { text = "🔴" })

local set = vim.opt
set.ignorecase = true
set.smartcase = true

-- set.colorcolumn = "120"
set.textwidth = 120

-- use treesitter as default foldmethod
-- set.foldmethod = "expr"
-- set.foldexpr = "v:lua.vim.treesitter.foldexpr()"
-- vim.opt.foldlevel = 99

vim.filetype.add({
  pattern = {
    [".*.jenkinsfile"] = "groovy",
    ["Jenkinsfile..*"] = "groovy",
    ["Jenkinsfile"] = "groovy",
  },
})
