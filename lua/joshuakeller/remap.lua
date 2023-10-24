vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("t", '<Esc>', '<C-\\><C-n>')
vim.keymap.set("n", ":t", ":ToggleTerm<CR>")
vim.keymap.set("n", ":T", ":ToggleTerm size=40<CR>")
