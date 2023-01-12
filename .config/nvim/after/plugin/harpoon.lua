local map = vim.api.nvim_set_keymap
local opts = { noremap = true }

map('n', '<A-a>', '<cmd>lua require("harpoon.mark").add_file()<CR>', opts)
map('n', '<A-s>', '<cmd>lua require("harpoon.ui").nav_prev()<CR>', opts)
map('n', '<A-d>', '<cmd>lua require("harpoon.ui").nav_next()<CR>', opts)
map('n', '<A-1>', '<cmd>lua require("harpoon.ui").nav_file(1)<CR>', opts)
map('n', '<A-2>', '<cmd>lua require("harpoon.ui").nav_file(2)<CR>', opts)
map('n', '<A-3>', '<cmd>lua require("harpoon.ui").nav_file(3)<CR>', opts)
map('n', '<A-4>', '<cmd>lua require("harpoon.ui").nav_file(4)<CR>', opts)
map('n', '<A-q>', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)
map('n', '<A-Q>', '<cmd>lua require("harpoon.term").gotoTerminal(1)<CR>', opts)
map('n', '<A-W>', '<cmd>lua require("harpoon.term").gotoTerminal(2)<CR>', opts)
map('n', '<A-E>', '<cmd>lua require("harpoon.term").gotoTerminal(3)<CR>', opts)

require("harpoon").setup({ 
	global_settings = {
		-- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
		save_on_toggle = false,

		-- saves the harpoon file upon every change. disabling is unrecommended.
		save_on_change = true,

		-- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
		enter_on_sendcmd = false,

		-- closes any tmux windows harpoon that harpoon creates when you close Neovim.
		tmux_autoclose_windows = false,

		-- filetypes that you want to prevent from adding to the harpoon list menu.
		excluded_filetypes = { "harpoon" },

		-- set marks specific to each git branch inside git repository
		mark_branch = true,
	}
})
