return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			-- 1. Setup Mason tools
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls" },
			})

			-- 2. Prepare capabilities for nvim-cmp (the deconstruction fix)
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- 3. The New Neovim 0.11+ Way
			-- Instead of lspconfig.ts_ls.setup, we use the new lsp.config table

			-- TypeScript Setup
			vim.lsp.config("ts_ls", {
				capabilities = capabilities,
			})

			-- Lua Setup
			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
					},
				},
			})

			-- 4. Start the servers for the current project
			vim.lsp.enable("ts_ls")
			vim.lsp.enable("lua_ls")

			-- 5. Keymaps
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
		end,
	},
	{
		"nvimdev/lspsaga.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lspsaga").setup({ ui = { border = "rounded" } })
			vim.keymap.set("n", "gp", "<cmd>Lspsaga peek_definition<CR>", { desc = "Peek Definition" })
			vim.keymap.set("n", "gr", "<cmd>Lspsaga finder<CR>", { desc = "Find References" })
		end,
	},
}
