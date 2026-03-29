return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.config("clangd", {})
		vim.lsp.config("pyright", {
			root_markers = { "requirements.txt", "main.py", "pyproject.toml", "pyrightconfig.json" },
		})

		vim.diagnostic.config({ virtual_text = true })
	end,
}
