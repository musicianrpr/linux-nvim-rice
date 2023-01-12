local map = vim.api.nvim_set_keymap
local opts = { silent = true, noremap = true }

require("nvim-tree").setup({
	sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true
  },
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

map('n', '<leader>tt', '<cmd>NvimTreeToggle<cr>', opts)
map('n', '<leader>tf', '<cmd>NvimTreeFind<cr>', opts)
map('n', '<leader>ts', '<cmd>NvimTreeFindFile<CR>', opts)
