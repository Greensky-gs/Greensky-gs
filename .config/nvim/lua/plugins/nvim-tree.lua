return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1
			require("nvim-tree").setup({
				filters = {
					dotfiles = false,
					git_ignored = false,
				},
			})

			vim.keymap.set("n", "<leader>eo", "<cmd>NvimTreeToggle<CR>", { noremap = true, silent = true })
			vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFocus<CR>", { noremap = true, silent = true })
		end
	}
}   
