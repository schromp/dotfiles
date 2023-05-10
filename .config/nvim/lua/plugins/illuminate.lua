return {
  "RRethy/vim-illuminate",
  opts = { delay = 200, under_cursor = false },
  config = function(_, opts)
    require("illuminate").configure(opts)
  end,
}
