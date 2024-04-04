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

-- return {
-- 	"navarasu/onedark.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		require("onedark").setup({
-- 			style = "dark",
-- 		})
-- 	end,
-- }
-- return {
-- 	"joshdick/onedark.vim",
-- }

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

return {
    {
        'maxmx03/dracula.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            ---@type dracula
            local dracula = require "dracula"

            dracula.setup({
                plugins = {
                    ["nvim-treesitter"] = true,
                    ["nvim-lspconfig"] = true,
                    ["nvim-cmp"] = true,
                    ["indent-blankline.nvim"] = true,
                    ["neo-tree.nvim"] = true,
                    ["nvim-tree.lua"] = true,
                    ["lazy.nvim"] = true,
                    ["telescope.nvim"] = true,
                }
            })
            vim.cmd.colorscheme 'dracula'
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        opts = {
            options = {
                theme = vim.g.colors_name,
                refresh = {
                    statusline = 1000,
                },
            },
        },
    }
} -- return {
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

-- return {
--     "EdenEast/nightfox.nvim"
-- }
