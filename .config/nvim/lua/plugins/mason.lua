return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"lua-language-server",
				"stylua",
			},
		},
	},
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim"
    }
  }
}
