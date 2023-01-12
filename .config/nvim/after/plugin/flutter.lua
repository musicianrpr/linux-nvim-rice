local map = vim.keymap.set
local opts = { silent = true, noremap = true }

map('n', '<leader>frun', '<cmd>FlutterRun -d chrome --web-hostname development.tomisha.com --web-port 5000<CR>', opts)
map('n', '<leader>femu', '<cmd>FlutterEmulators<CR>', opts)
map('n', '<leader>fdev', '<cmd>FlutterDevices<CR>', opts)
map('n', '<leader>frel', '<cmd>FlutterReload<CR>', opts)
map('n', '<leader>fres', '<cmd>FlutterRestart<CR>', opts)
