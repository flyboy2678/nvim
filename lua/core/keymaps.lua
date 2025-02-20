-- Disable spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v'}, '<Space>', '<Nop>', { silent = true })

local opts = { noremap = true, silent = true }

-- save file
vim.keymap.set('n', 'i', '<C-s>', '<cmd> w <CR>', opts)

-- quit file
vim.keymap.set('n', '<C-w>', '<cmd> q <CR>', opts)

-- go to normal mode 
vim.keymap.set('i', 'jj', '<Esc>', opts)

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', opts, { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', opts, { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', opts, { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', opts, { desc = 'Move focus to the upper window' }) 

-- Vertical scroll and center
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)


