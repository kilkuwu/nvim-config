local utils = require("utils")

vim.keymap.set('i', 'jj', '<Esc>')

vim.keymap.set('i', '<C-h>', '<C-w>')
vim.keymap.set('c', '<C-h>', '<C-w>')

-- Moving around
vim.keymap.set('n', '<C-j>', "<C-w>j")
vim.keymap.set('n', '<C-h>', "<C-w>h")
vim.keymap.set('n', '<C-k>', "<C-w>k")
vim.keymap.set('n', '<C-l>', "<C-w>l")

-- Select all
vim.keymap.set('n', '<C-a>', 'ggVG')

vim.keymap.set('t', 'jj', '<C-\\><C-n>', { noremap = true })

vim.keymap.set('n', '<leader>t', utils.VerticalTerminal)

vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y')

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.api.nvim_create_user_command("EditSnippet", require("luasnip.loaders").edit_snippet_files, {})

-- vim.keymap.set('n', '<C-u>', '<C-u>zz')
-- vim.keymap.set('n', '<C-d>', '<C-d>zz')


