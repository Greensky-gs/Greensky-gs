return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.config("clangd", {
			root_markers = {
				".clangd", ".clang-tidy", ".clang-format",
				"compile_commands.json", "compile_flags.txt",
				"configure.ac", "makefile",
			},
		})
		vim.lsp.config("pyright", {
			root_markers = {
				"requirements.txt", "main.py",
				"pyproject.toml", "pyrightconfig.json",
			},
			servers = {
				pyright = {
					settings = {
						python = {
							analysis = {
								autoSearchPaths = true,
								diagnosticMode = "workspace",
							},
						},
					},
				},
			},
		})

		vim.diagnostic.config({ virtual_text = true })
	end,
}
