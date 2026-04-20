return {
	"luukvbaal/statuscol.nvim",
	config = function()
		local builtin = require("statuscol.builtin")
		--
		require("statuscol").setup({
			setopt = true,
			ft_ignore = { "neo-tree" },
			segments = {
				{
					sign = {
						namespace = { "gitsigns.*" },
						name = { "gitsigns.*" },
					},
				},
				{
					sign = {
						namespace = { ".*" },
						name = { ".*" },
						auto = true,
					},
				},
				{
					text = { builtin.lnumfunc, " " },
					condition = { true },
					click = "v:lua.ScLa",
				},
			},
		})
	end,
}
