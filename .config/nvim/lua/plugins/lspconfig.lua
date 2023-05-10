return {
  "neovim/nvim-lspconfig",
    dependencies = {
      {
        "SmiteshP/nvim-navbuddy",
        cmd = "NavBuddy",
        dependencies = {
          "SmiteshP/nvim-navic",
        },
        opts = { lsp = { auto_attach = true } },
      },
      "hrsh7th/cmp-nvim-lsp",
    },
  config = function()
    local on_attach = function(client, bufnr)
      -- keybind options
      local opts = { noremap = true, silent = true, buffer = bufnr }
      local keymap = vim.keymap                                                 -- for conciseness
      -- set keybinds
      keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>", opts)
      keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      keymap.set('n', 'K', vim.lsp.buf.hover, opts)
      keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
      keymap.set('n', '<space>lr', vim.lsp.buf.rename, opts)
      keymap.set({ 'n', 'v' }, '<space>la', vim.lsp.buf.code_action, opts)
      keymap.set("n", "<leader>lf", function()
        vim.lsp.buf.format({ async = true })
      end, opts)
    end
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local lspconfig = require("lspconfig")
    local servers = { "lua_ls", "clangd", "pylsp" }

    for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
    end
  end,
}
