return {
	"folke/tokyonight.nvim",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 999, -- make sure to load this before all the other start plugins
	opts = { style = "day" },
	init = function()
		vim.cmd.colorscheme("tokyonight-night")
		vim.cmd.hi("Comment gui=none")
	end,
}
