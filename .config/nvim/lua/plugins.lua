local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- ################## COLORSCHEME ###################
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
        vim.cmd('colorscheme rose-pine')
    end
	})

	-- ################## FLUTTER PLUGINS ###################
	use 'dart-lang/dart-vim-plugin'
	use 'thosakwe/vim-flutter'
	use 'natebosch/vim-lsc'
	use 'natebosch/vim-lsc-dart'
	use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}

	-- ################## CODE COMPLETION ###################
	use {'neoclide/coc.nvim', branch = 'release'}

	-- ################## SYNTAX-HIGHLIGHT ###################
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use {
  	'm-demare/hlargs.nvim',
  	requires = { 'nvim-treesitter/nvim-treesitter' }
	}
	use 'nvim-treesitter/nvim-treesitter-context'
	-- ################## FILE EXPLORER ###################
	use {
  	'nvim-tree/nvim-tree.lua',
  	requires = {
    	'nvim-tree/nvim-web-devicons', -- optional, for file icons
  	},
  	tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}

	-- ################## AUTOCLOSE BRACKETS ###################
	use 'jiangmiao/auto-pairs'

	-- ################## NAVIGATION ##################
	use {
		'ThePrimeagen/harpoon',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- ################## FUZZY FINDER ##################
	use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.0',
  	requires = { {'nvim-lua/plenary.nvim'} }
	}
	
	-- ################# ERROR DIAGNOSIS #####################
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	}

	-- ################# GIT SUPPORT #################
	use 'mhinz/vim-signify'
	use 'tpope/vim-fugitive'
	
	-- ################# STATUS BAR #################
	use {
  	'nvim-lualine/lualine.nvim',
  	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- ################# FILE SUPPORT #################
	use 'elkowar/yuck.vim'

	-- ################# UNDO TREE #################
	use 'mbbill/undotree'

	-- ################# GO SUPPORT #################
	use 'ray-x/go.nvim'
	use 'ray-x/guihua.lua' -- recommanded if need floating window support
	use 'neovim/nvim-lspconfig'
	
	-- ################# DEBUGGING #################
	use 'mfussenegger/nvim-dap'
	use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
	use 'leoluz/nvim-dap-go'

	-- ################# RUST #################
	use 'rust-lang/rust.vim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
