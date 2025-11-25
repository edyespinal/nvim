return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{ "nvim-telescope/telescope-ui-select.nvim" },
		{ "nvim-telescope/telescope-live-grep-args.nvim" },
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<D-p>", builtin.find_files)
		vim.keymap.set("n", "<D-F>", ":lua require('telescope').extensions.live_grep_args.live_grep_args()")

		telescope.setup({
			defaults = {
				file_ignore_patterns = {
					"node_modules",
				},
			},
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
				live_grep_args = {
					auto_quoting = true,
				},
			},
		})

		telescope.load_extension("ui-select")
		telescope.load_extension("live_grep_args")
	end,
}
