return {
	"rcarriga/nvim-notify",
	config = function()
		require("notify").setup({
			timeout = 3000,
			render = "compact",
			top_down = false,
		})
	end,
	keys = {
		{
			"<leader>un",
			function()
				require("notify").dismiss({ silent = true, pending = true })
			end,
			desc = "Dismiss all Notifications",
		},
	},
}
