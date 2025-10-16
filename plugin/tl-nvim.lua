vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = "*.tl",
	callback = function()
		vim.bo.filetype = "tl"
	end,
})
