vim.cmd('au TextYankPost * silent! lua vim.highlight.on_yank()')
vim.wo.relativenumber = true

vim.fn.sign_define('DapBreakpoint', { text = '⛔️' })
vim.fn.sign_define('DapBreakpointRejected', { text = '🚫' })
vim.fn.sign_define('DapStopped', { text = '📌' })
vim.fn.sign_define('DapLogPoint', { text = '⛳︎' })
vim.fn.sign_define('DapBreakpointCondition', { text = '🔴' })

local set = vim.opt
set.ignorecase = true
set.smartcase = true
