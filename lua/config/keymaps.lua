-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del("n", "<leader>gg")

vim.keymap.set("i", "jj", "<Esc>", {})
vim.keymap.set("n", "<leader>q", function()
  vim.lsp.buf.code_action()
end, { desc = "[q] Apply quick fix" })
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", {})
vim.keymap.set("n", "<leader>p", ":LazyFormat<CR>", {})
vim.keymap.set("n", "<leader>ee", function()
  vim.diagnostic.open_float()
end, {})
vim.keymap.set("n", "<Leader>+", ":vertical resize +25<CR>", {})
vim.keymap.set("n", "<Leader>-", ":vertical resize -25<CR>", {})
vim.keymap.set("n", "<Leader>*", ":resize +25<CR>", {})
vim.keymap.set("n", "<Leader>_", ":resize -25<CR>", {})
vim.keymap.set("n", "<Leader>t", ":Neotree toggle<CR>", {})
vim.keymap.set("n", "<Leader>gg", ":Neotree float git_status<CR>", {})
vim.keymap.set("n", "<Leader>z", ":ZenMode<CR>", {})

vim.keymap.set("n", "<Leader>ha", ":lua require('harpoon.mark').add_file()<CR>", {})
vim.keymap.set("n", "<Leader>hv", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", {})
vim.keymap.set("n", "<Leader>h1", ":lua require('harpoon.ui').nav_file(1)<CR>", {})
vim.keymap.set("n", "<Leader>h2", ":lua require('harpoon.ui').nav_file(2)<CR>", {})
vim.keymap.set("n", "<Leader>h3", ":lua require('harpoon.ui').nav_file(3)<CR>", {})
vim.keymap.set("n", "<Leader>h4", ":lua require('harpoon.ui').nav_file(4)<CR>", {})
vim.keymap.set("n", "<Leader>h5", ":lua require('harpoon.ui').nav_file(5)<CR>", {})

-- Copilot
-- vim.keymap.set("i", "C-r", 'copilot#Accept("CR")', {
--   expr = true,
--   replace_keycodes = false,
-- })
-- vim.cmd('let g:copilot_no_tab_map = v:true')
-- vim.g.copilot_no_tab_map = true
-- vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
require("copilot").setup({
  suggestion = { enabled = false },
  panel = { enabled = false },
})
