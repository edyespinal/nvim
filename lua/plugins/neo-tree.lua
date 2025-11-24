return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons", -- optional, but recommended
	},
	lazy = false, -- neo-tree will lazily load itself
	config = function()
		vim.keymap.set("n", "<D-b>", ":Neotree toggle<CR>")
		vim.keymap.set("n", "<leader>nf", ":Neotree focus<CR>")

		require("neo-tree").setup({
			window = {
				position = "right",
			},
			filesystem = {
				filtered_items = {
					visible = false,
					hide_gitignored = false,
					hide_dotfiles = false,
					never_show = { ".git" },
				},
			},
		})
	end,
}
