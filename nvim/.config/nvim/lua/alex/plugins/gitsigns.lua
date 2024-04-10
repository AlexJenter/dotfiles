return {
	{ -- Adds git related signs to the gutter, as well as utilities for managing changes
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { text = "A" },
				change = { text = "C" },
				delete = { text = "D" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
		},
		preview_config = {
			border = "single",
			style = "minimal",
			relative = "cursor",
			row = 0,
			col = 1,
		},
	},
	{
		"radyz/telescope-gitsigns",
		dependencies = {
			"lewis6991/gitsigns.nvim",
			"nvim-telescope/telescope.nvim",
		},
	},
}
