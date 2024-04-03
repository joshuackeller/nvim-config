require("joshuakeller.remap")
require("joshuakeller.set")
print("joshuakeller nvim config")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("joshuakeller.plugins")

-- vim.cmd("colorscheme rose-pine")
vim.cmd("colorscheme dracula")

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	command = "FormatWriteLock",
})

vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = "#73c991" })
vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = "#81b88b" })
vim.api.nvim_set_hl(0, "NeoTreeGitConflict", { fg = "#81b88b" })
vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = "#e4676b" })
vim.api.nvim_set_hl(0, "NeoTreeGitIgnored", { fg = "#8c8c8c" })
vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = "#e2c08d" })
