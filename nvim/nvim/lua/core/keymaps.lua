vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.rnu = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
--vim.opt.noexpandtab = true
vim.opt.copyindent = true
vim.opt.preserveindent = true
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
-- highlight search results
vim.opt.hlsearch = true
-- new line when line is out of screen
vim.opt.wrap = true
vim.opt.termguicolors = true

vim.g.mapleader = "\\"
vim.opt.conceallevel = 1

function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- evil mode (cannot use arrows to move in normal mode)
map("n", "<leader>s", ":%s/<<C-r><C-w>>/")
map("n", "<Left>", ':echo "Nope"<CR>')
map("n", "<Right>", ':echo "Nope"<CR>')
map("n", "<Up>", ':echo "Nope"<CR>')
map("n", "<Down>", ':echo "Nope"<CR>')
map("n", "aa", ":Ouroboros<CR>")
map("n", "cp", ":CodeSnap<CR>")

--autocmd! Filetype c,cpp map<buffer> <C-e> :Ouroboros<CR>
