vim.keymap.set('i', 'jj', '<Esc>')
-- Make Ctrl + V paste
vim.keymap.set('i', '<C-v>', '<C-r>"')

-- Make Ctrl + BS work
vim.keymap.set('i', '<C-h>', '<C-w>')
vim.keymap.set('i', '<C-BS>', '<C-w>')

-- Allowing Ctrl + C as copy in visual mode
vim.keymap.set('v', '<C-c>', 'y')

-- Allowing Ctrl + V as paste
vim.keymap.set('n', '<C-v>', 'p')

-- Moving around
vim.keymap.set('n', '<C-j>', "<C-w>j")
vim.keymap.set('n', '<C-h>', "<C-w>h")
vim.keymap.set('n', '<C-k>', "<C-w>k")
vim.keymap.set('n', '<C-l>', "<C-w>l")

-- Select all
vim.keymap.set('n', '<C-a>', 'ggVG')
vim.keymap.set('i', '<C-a>', '<Esc>ggVG')

vim.keymap.set('t', 'jj', '<C-\\><C-n>', { noremap = true })

vim.keymap.set('n', '<leader>t', ':V<CR>')


