return {
	{
		"lewis6991/gitsigns.nvim", -- https://github.com/lewis6991/gitsigns.nvim
		opts = {
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "-" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
			preview_config = {
				border = "single",
				style = "minimal",
				relative = "cursor",
				row = 0,
				col = 1,
			},
		},
		keys = {
			{ "<leader>hp", "<cmd>Gitsigns preview_hunk_inline<cr>", desc = "Preview hunk inline" },
			{ "<Left>", "<cmd>Gitsigns prev_hunk<cr>", desc = "Previous hunk" },
			{ "<Right>", "<cmd>Gitsigns next_hunk<cr>", desc = "Next hunk" },
		},
	},
	{
		"radyz/telescope-gitsigns", -- https://github.com/radyz/telescope-gitsigns
		dependencies = {
			"lewis6991/gitsigns.nvim",
			"nvim-telescope/telescope.nvim",
		},
	},
}
