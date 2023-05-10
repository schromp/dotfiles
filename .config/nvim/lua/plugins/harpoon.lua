return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{
			"<leader>ha",
			function()
				require("harpoon.mark").add_file()
			end,
			desc = "Add file to Harpoon",
		},
		{
			"<leader>hh",
			function()
				require("harpoon.ui").toggle_quick_menu()
			end,
			desc = "Toggle Harpoon Menu",
		},
		{
			"<leader>hn",
			function()
				require("harpoon.ui").nav_next()
			end,
			desc = "Goto next Harpoon file",
		},
		{
			"<leader>hp",
			function()
				require("harpoon.ui").nav_prev()
			end,
			desc = "Goto prev Harpoon file",
		},
		{
			"<leader>ht",
			function()
				require("harpoon.tmux").gotoTerminal(1)
			end,
			desc = "Open Tmux Terminal with Harpoon",
		},
	},
	config = function()
		require("harpoon").setup()
	end,
}
