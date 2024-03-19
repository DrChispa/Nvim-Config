return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "eslint_d" },
			astro = { "prettier" },
			typescript = { "eslint_d" },
			python = { "black" },
			css = { "prettier" },
			html = { "prettier" },
			json = { "prettier" },
			markdown = { "markdownlint" },
		},
		format_on_save = {
			timeout_ms = 1500,
			lsp_fallback = true,
		},
		format_after_save = {
			lsp_fallback = true,
		},
	},
	cofig = function(_, opts)
		require("conform").setup(opts)
	end,
}
