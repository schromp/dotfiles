return {
  "lewis6991/gitsigns.nvim",
  keys = {
    { "<leader>gs", "<cmd>Gitsigns toggle_current_line_blame<cr>", desc = "Toggle Telescope File Tree" },
  },
  config = function()
    require("gitsigns").setup()
  end,
}
