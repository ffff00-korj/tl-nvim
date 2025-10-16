local M = {}

function M.setup()
	vim.filetype.add({
		extension = {
			tl = "tl",
		},
	})

	local has_treesitter, treesitter_configs = pcall(require, "nvim-treesitter.configs")

	if has_treesitter then
		treesitter_configs.setup({
			highlight = {
				enable = true,
				disable = { "tl" },
				additional_vim_regex_highlighting = true,
			},
		})
	end
end

return M
