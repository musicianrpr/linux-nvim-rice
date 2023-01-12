local map = vim.keymap.set

map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")
map('n', 'J', 'mzJ`z')
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')

map('x', '<leader>p', "\"_dP")

map('n', '<leader>y', "\"+y")
map('v', '<leader>y', "\"+y")
map('n', '<leader>Y', "\"+Y")

map('n', '<C-k>', '<cmd>cnext<CR>zz')
map('n', '<C-j>', '<cmd>cprev<CR>zz')
map('n', '<leader-k>', '<cmd>lnext<CR>zz')
map('n', '<leader-j>', '<cmd>lprev<CR>zz')

map("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
