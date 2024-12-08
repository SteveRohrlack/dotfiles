-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

-- escape
map("i", "jj", "<esc>", { desc = "back to normal" })
map("i", "kk", "<esc>", { desc = "back to normal" })

-- buffer navigation
map("n", "<leader>b;", ":bnext<cr>", { desc = "next buffer" })
map("n", "<leader>b.", ":bprev<cr>", { desc = "previous buffer" })

-- fold focus
map("n", "<leader>zf", "zMzOzz", { desc = "focus fold" })
map("n", "<leader>zb", "zRzz", { desc = "blur fold" })
