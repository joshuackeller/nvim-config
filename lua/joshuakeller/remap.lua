vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("n", "<leader>t", ":ToggleTerm size=15<CR>")
vim.keymap.set("n", "<leader>T", ":ToggleTerm size=40<CR>")
vim.keymap.set("n", "<leader>s", ":w<CR>")
vim.keymap.set("n", "<leader>gg", ":terminal lazygit<CR>")

-- Windows
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>wd", "<C-W>c", { noremap = true, silent = true }) -- delete window
vim.api.nvim_set_keymap("n", "<leader>wj", "<C-W>s", { noremap = true, silent = true }) -- open window right
vim.api.nvim_set_keymap("n", "<leader>wl", "<C-W>v", { noremap = true, silent = true }) -- open window below
