local builtin = require('telescope.builtin')

-- find by file names
vim.keymap.set('n', '<c-p>', builtin.find_files, {})
-- search words in all the files
vim.keymap.set('n', '<leader><leader>', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fg', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
