-- NETRW
vim.keymap.set("n", "<leader>e", vim.cmd.Lex)

-- Fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Buffer
vim.keymap.set('n', '<leader>bn', vim.cmd.bn)
vim.keymap.set('n', '<leader>bn', vim.cmd.bp)
