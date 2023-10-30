-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del("n", "<leader>gg")
vim.keymap.del("n", "<leader>e")

vim.keymap.set("i", "jj", "<Esc>", {})
vim.keymap.set("n", "<leader>q", function()
  vim.lsp.buf.code_action()
end, { desc = "[q] Apply quick fix" })
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", {})
vim.keymap.set("n", "<leader>p", ":LazyFormat<CR>", {})
vim.keymap.set("n", "<leader>e", function()
  vim.diagnostic.open_float()
end, {})
vim.keymap.set("n", "<Leader>+", ":vertical resize +25<CR>", {})
vim.keymap.set("n", "<Leader>-", ":vertical resize -25<CR>", {})
vim.keymap.set("n", "<Leader>*", ":resize +25<CR>", {})
vim.keymap.set("n", "<Leader>_", ":resize -25<CR>", {})
vim.keymap.set("n", "<Leader>t", ":Neotree toggle<CR>", {})
vim.keymap.set("n", "<Leader>gg", ":Neotree float git_status<CR>", {})
