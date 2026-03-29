return {
	'nvim-treesitter/nvim-treesitter',
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.config").setup({
			highlight = {
				enable = true,
			},
			indent = { enable = true },
			autotage = { enable = true },
			ensure_installed = {
				"lua",
				"c",
				"cpp",
				"typescript",
				"python",
				"javascript",
				"markdown",
				"markdown_inline",
			},
			auto_install = true 
		})
	end
}
