vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("t", '<Esc>', '<C-\\><C-n>')
vim.keymap.set("n", ":t<CR>", ":ToggleTerm<CR>")
vim.keymap.set("n", ":T<CR>", ":ToggleTerm size=40<CR>")
vim.keymap.set("n", "<leader>s", ":w<CR>")
vim.keymap.set("n", "<leader>gg", ":terminal lazygit<CR>")
