-- 	"folke/tokyonight.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {
-- 		style = "night",
-- 	},
-- }
-- return {
-- 	"Mofiqul/vscode.nvim",
-- 	priority = 1000,
-- }

return {
	"navarasu/onedark.nvim",
	priority = 1000,
}

-- return {
-- 	{
-- 		"bluz71/vim-nightfly-guicolors",
-- 		priority = 1000,
-- 		config = function()
-- 			vim.g.nightflyTransparent = true
-- 			vim.cmd.colorscheme("nightfly")
-- 		end,
-- 	},
-- }

-- return {
-- 	{
-- 		"maxmx03/dracula.nvim",
-- 		lazy = false, -- make sure we load this during startup if it is your main colorscheme
-- 		priority = 1000, -- make sure to load this before all the other start plugins
-- 		config = function()
-- 			local dracula = require("dracula")
--
-- 			dracula.setup()
-- 			vim.cmd.colorscheme("dracula")
-- 		end,
-- 	},
-- }
-- return {
-- 	"loctvl842/monokai-pro.nvim",
-- 	config = function()
-- 		require("monokai-pro").setup()
-- 	end,
-- }

-- return {
-- 	{
-- 		"rose-pine/neovim",
-- 		name = "rose-pine",
-- 		config = function()
-- 			require("rose-pine").setup({
-- 				variant = "main",
-- 				dark_variant = "main",
-- 			})
-- 		end,
-- 	},
-- }
