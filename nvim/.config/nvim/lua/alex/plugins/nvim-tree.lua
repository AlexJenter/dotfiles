return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			view = {
				side = "right",
			},
		})
	end,
	keys = {
		{ "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle Nvim Tree" },
		{ "<leader>F", "<cmd>NvimTreeFindFile<cr>", desc = "Find File in Nvim Tree" },
		{ "<leader>E", "<cmd>NvimTreeFocus<cr>", desc = "Focus Nvim Tree" },
	},
}
