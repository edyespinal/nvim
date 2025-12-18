return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"c",
				"typescript",
				"javascript",
				"vim",
				"vimdoc",
				"query",
				"markdown",
				"markdown_inline",
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
				disable = function(lang, buf)
					local max_filesize = 1000 * 1024
					local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
					if ok and stats and stats.size > max_filesize then
						return true
					end
				end,
			},
		})
	end,
}
