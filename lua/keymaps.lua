vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('i', '<C-h>', '<C-w>')
vim.keymap.set('i', '<C-v', '<C-r>"')
vim.keymap.set('i', '<C-a>', '<Esc>ggVG')

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



