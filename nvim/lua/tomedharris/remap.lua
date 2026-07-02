-- Set the leader to a preferred key
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

-- Open the file Explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Exit insert mode with "jj" mapping
vim.keymap.set("i", "jj", "<ESC>", { silent = true })

-- Map ctrl-hjkl panel navigation
vim.keymap.set('n', '<C-J>', '<C-W><C-J>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-K>', '<C-W><C-K>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-L>', '<C-W><C-L>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-H>', '<C-W><C-H>', { noremap = true, silent = true })
