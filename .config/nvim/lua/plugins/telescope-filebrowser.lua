return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  enabled = false,
  keys = {
    { "<leader>e", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>", desc = "Toggle Telescope File Tree" },
  },
}
