return {
	"TimUntersberger/neogit",
	dependencies = {
		"sindrets/diffview.nvim",
	},
  enabled = false,
	config = function()
		local neogit = require("neogit")

    neogit.setup {
      integrations = {
        diffview = true
      }
    }
	end,
}
