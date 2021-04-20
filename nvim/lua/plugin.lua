return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use {'dracula/vim', as = 'dracula'}
	use {
  		'hoob3rt/lualine.nvim',
  		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}
	use {
 	 'glepnir/galaxyline.nvim',
    	  branch = 'main',
  	}
	use 'sainnhe/gruvbox-material'
	use 'neoclide/coc.nvim'
	use 'glepnir/lspsaga.nvim'
	use 'kabouzeid/nvim-lspinstall'
	use 'kassio/neoterm'
	use 'voldikss/vim-floaterm'	
	use 'liuchengxu/vista.vim'
	use 'kyazdani42/nvim-tree.lua'
	use 'glepnir/dashboard-nvim'
	use 'metakirby5/codi.vim'
end)


