return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	cmd = "Telescope",
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
		{ "<leader>fs", "<cmd>Telescope live_grep<cr>", desc = "Find Files" },
		{ "<leader>fc", "<cmd>Telescope grep_string<cr>", desc = "Find Files" },
		{ "<leader>fk", "<cmd>Telescope command_history<cr>", desc = "Command History" },
	},
	config = function()
		require("telescope").setup({
			extensions = {
				file_browser = {},
			},
		})
		-- require("telescope").load_extension("file_browser")
	end,
}
