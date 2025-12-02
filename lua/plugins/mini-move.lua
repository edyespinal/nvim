return {
	"nvim-mini/mini.move",
	version = "*",
	config = function()
		require("mini.move").setup({
			mappings = {
				-- Move visual selection
				left = "<M-Left>",
				right = "<M-Right>",
				down = "<M-Down>",
				up = "<M-Up>",

				-- Move current line in normal mode
				line_left = "<M-Left>",
				line_right = "<M-Right>",
				line_down = "<M-Down>",
				line_up = "<M-Up>",
			},
			options = {
				reindent_linewise = true,
			},
		})
	end,
}
