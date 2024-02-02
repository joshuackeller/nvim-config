return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v3.x",
	dependencies = {
		-- LSP Support
		{ "neovim/nvim-lspconfig" }, -- Required
		{ "williamboman/mason.nvim" }, -- Optional
		{ "williamboman/mason-lspconfig.nvim" }, -- Optional

		-- Autocompletion
		{ "hrsh7th/nvim-cmp" }, -- Required
		{ "hrsh7th/cmp-nvim-lsp" }, -- Required
		{ "L3MON4D3/LuaSnip" }, -- Required
		{ "mhartington/formatter.nvim" }, -- Optional - Formatter
	},
	config = function()
		local lsp = require("lsp-zero").preset({})

		lsp.on_attach(function(client, bufnr)
			-- see :help lsp-zero-keybindings
			-- to learn the available actions
			lsp.default_keymaps({ buffer = bufnr })
		end)

		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"rust_analyzer",
				"tsserver",
				"tailwindcss",
				"svelte",
				"prismals",
				"gopls",
				"yamlls",
				"clangd",
				"cssls",
				"templ",
			},
			handlers = {
				lsp.default_setup,
				lua_ls = function()
					-- (Optional) Configure lua language server for neovim
					require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())
				end,
			},
		})
		local cmp = require("cmp")

		cmp.setup({
			mapping = cmp.mapping.preset.insert({
				["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			}),
		})

		--lsp.format_on_save({
		--    format_opts = {
		--      async = false,
		--      timeout_ms = 10000,
		--    },
		--    servers = {
		--      ['tsserver'] = {'javascript', "javascriptreact", "javascript.tsx", 'typescript', "typescriptreact", "typescript.tsx"},
		--      ['rust_analyzer'] = {'rust'},
		--    }
		--})

		lsp.setup()
	end,
}

-- local plugins = {
-- {
--     'VonHeikemen/lsp-zero.nvim',
--     branch = 'v3.x',
--     lazy = true,
--     config = false,
--     init = function()
--       -- Disable automatic setup, we are doing it manually
--       vim.g.lsp_zero_extend_cmp = 0
--       vim.g.lsp_zero_extend_lspconfig = 0
--     end,
--   },
--   {
--     'williamboman/mason.nvim',
--     lazy = false,
--     config = true,
--   },
--
--   -- Autocompletion
--   {
--     'hrsh7th/nvim-cmp',
--     event = 'InsertEnter',
--     dependencies = {
--       {'L3MON4D3/LuaSnip'},
--     },
--     config = function()
--       -- Here is where you configure the autocompletion settings.
--       local lsp_zero = require('lsp-zero')
--       lsp_zero.extend_cmp()
--
--       -- SEE DOCS FOR MORE CONFIG
--     end
--   },
--
--   -- LSP
--   {
--     'neovim/nvim-lspconfig',
--     cmd = {'LspInfo', 'LspInstall', 'LspStart'},
--     event = {'BufReadPre', 'BufNewFile'},
--     dependencies = {
--       {'hrsh7th/cmp-nvim-lsp'},
--       {'williamboman/mason-lspconfig.nvim'},
--     },
--     config = function()
--       -- This is where all the LSP shenanigans will live
--       local lsp_zero = require('lsp-zero')
--       lsp_zero.extend_lspconfig()
--
--       lsp_zero.on_attach(function(client, bufnr)
--         -- see :help lsp-zero-keybindings
--         -- to learn the available actions
--         lsp_zero.default_keymaps({buffer = bufnr})
--       end)
--
--       require('mason-lspconfig').setup({
--         ensure_installed = {
-- 				"lua_ls", "rust_analyzer", "cssls", "denols",
-- 				"dockerls", "html", "jsonls", "tsserver",
-- 				"prismals", "sqlls", "svelte", "taplo",
-- 				"tailwindcss", "yamlls"
-- 			},
--         handlers = {
--           lsp_zero.default_setup,
--           lua_ls = function()
--             -- (Optional) Configure lua language server for neovim
--             local lua_opts = lsp_zero.nvim_lua_ls()
--             require('lspconfig').lua_ls.setup(lua_opts)
--           end,
--         }
--       })
--     end
--   }
-- }
