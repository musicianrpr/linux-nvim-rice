local builtin = require('telescope.builtin')

require('telescope').setup{
  defaults = {
    -- ...
  },
  pickers = {
    find_files = {
			theme = "dropdown"
    }
  },
  extensions = {
    -- ...
  }
}

vim.keymap.set('n', '<leader>sf', "<cmd>Telescope find_files<CR>", {})
vim.keymap.set('n', '<leader>sh', "<cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍<CR>", {})
vim.keymap.set('n', '<leader>sg', builtin.git_files, {})
vim.keymap.set('n', '<leader>st', builtin.live_grep, {})
vim.keymap.set('n', '<leader>sb', builtin.buffers, {})
vim.keymap.set('n', '<leader>sd', builtin.help_tags, {})
