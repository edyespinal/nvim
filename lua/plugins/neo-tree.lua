local function get_sidebar_width()
	local columns = vim.o.columns

	if columns < 100 then
		return 25
	else
		return math.floor(columns * 0.20)
	end
end

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
		vim.keymap.set("n", "<D-b>", ":Neotree toggle<CR>", { silent = true, desc = "Toggle NeoTree" })
		vim.keymap.set("n", "<leader>nf", ":Neotree focus<CR>", { silent = true, desc = "Focus NeoTree" })
		vim.keymap.set("n", "<leader>ns", ":Neotree float git_status<CR>")

		require("neo-tree").setup({
			window = {
				position = "right",
				width = get_sidebar_width(),
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
