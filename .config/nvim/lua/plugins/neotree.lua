return {
  "nvim-neo-tree/neo-tree.nvim",
  -- keys = {
  --   { "<leader>e", "<cmd>NeoTreeShowToggle<cr>", desc = "Toggle Neotree" },
  -- },
  default_component_configs = {
    indent = {
      with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
      expander_collapsed = "",
      expander_expanded = "",
      expander_highlight = "NeoTreeExpander",
    },
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_hidden = false,
      },
    },
  },
}
