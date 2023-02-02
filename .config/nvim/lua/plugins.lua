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
	-- use 'jiangmiao/auto-pairs'

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
	use 'folke/lsp-colors.nvim'

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
	use 'fatih/vim-go'
	
	-- ################# DEBUGGING #################
	use	"mfussenegger/nvim-dap"
	use	"theHamsta/nvim-dap-virtual-text"
	use	"rcarriga/nvim-dap-ui"
	use "leoluz/nvim-dap-go"
	use	"nvim-telescope/telescope-dap.nvim"
	use "folke/neodev.nvim"

	-- ################# RUST #################
	use 'rust-lang/rust.vim'

	-- ################# SXHKD #################
	use 'kovetskiy/sxhkd-vim'

	-- ################# FIRESTORE SECUTIRY RULES ###################
	use 'delphinus/vim-firestore'

	-- ################# LSP CONFIG ################
	use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

	-- ################# AUTOCONFIGURE ################
	use { "williamboman/mason.nvim" }
	use 'jayp0521/mason-nvim-dap.nvim'

	-- ################# VIM WHICH KEY ################
	use 'liuchengxu/vim-which-key'

	-- ################# MARKDOWN ################
	use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  if packer_bootstrap then
    require('packer').sync()
  end
end)
