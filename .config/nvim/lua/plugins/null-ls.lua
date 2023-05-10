return {
  "jose-elias-alvarez/null-ls.nvim",
  config = function()

local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
   formatting.stylua,
}

null_ls.setup {
   debug = true,
   sources = sources,
}

  end
}
