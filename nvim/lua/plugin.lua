return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use {'dracula/vim', as = 'dracula'}
	use {
  		'hoob3rt/lualine.nvim',
  		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}
	use {
  		'lewis6991/gitsigns.nvim',
  		requires = {
    			'nvim-lua/plenary.nvim'
  		},
  		config = function()
   	 		require('gitsigns').setup {
				  signs = {
           add = {hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
           change = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
           delete = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
           topdelete = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
           changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
        			},
			}
  		end
	}
	use "ray-x/lsp_signature.nvim"
	use {
 	 'glepnir/galaxyline.nvim',
    	  branch = 'main',
  	}
	use {
  		"folke/lsp-trouble.nvim",
  		requires = "kyazdani42/nvim-web-devicons",
  		config = function()
    		require("trouble").setup {
			    height = 10, -- height of the trouble list
    icons = true, -- use devicons for filenames
    mode = "lsp_workspace_diagnostics", -- "lsp_workspace_diagnostics", "lsp_document_diagnostics", "quickfix", "lsp_references", "loclist"
    fold_open = "", -- icon used for open folds
    fold_closed = "", -- icon used for closed folds
    action_keys = { -- key mappings for actions in the trouble list
        close = "q", -- close the list
        cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
        refresh = "r", -- manually refresh
        jump = {"<cr>", "<tab>"}, -- jump to the diagnostic or open / close folds
        jump_close = {"o"}, -- jump to the diagnostic and close the list
        toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
        toggle_preview = "P", -- toggle auto_preview
        hover = "K", -- opens a small poup with the full multiline message
        preview = "p", -- preview the diagnostic location
        close_folds = {"zM", "zm"}, -- close all folds
        open_folds = {"zR", "zr"}, -- open all folds
        toggle_fold = {"zA", "za"}, -- toggle fold of current file
        previous = "k", -- preview item
        next = "j" -- next item
    },
    indent_lines = true, -- add an indent guide below the fold icons
    auto_open = false, -- automatically open the list when you have diagnostics
    auto_close = false, -- automatically close the list when you have no diagnostics
    auto_preview = true, -- automatyically preview the location of the diagnostic. <esc> to close preview and go back to last window
    auto_fold = false, -- automatically fold a file trouble list at creation
    signs = {
        -- icons / text used for a diagnostic
        error = "",
        warning = "",
        hint = "",
        information = "",
        other = "﫠"
    },
    use_lsp_diagnostic_signs = false
      		-- your configuration comes here
      		-- or leave it empty to use the default settings
      		-- refer to the configuration section below
    		}
 	 end
	}
	use 'famiu/feline.nvim'
	use "lukas-reineke/indent-blankline.nvim" 
	use 'folke/tokyonight.nvim'
	use "kdav5758/TrueZen.nvim"
	use 'folke/lsp-colors.nvim'
	use 'yamatsum/nvim-cursorline'
	use 'andymass/vim-matchup'
	use 'norcalli/nvim-terminal.lua'
	use 'airblade/vim-gitgutter'
	use 'sainnhe/gruvbox-material'
	use 'neoclide/coc.nvim'
	use 'glepnir/lspsaga.nvim'
	use 'kabouzeid/nvim-lspinstall'
	use 'kassio/neoterm'
	use {
  		'nvim-telescope/telescope.nvim',
  		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'},  {"nvim-telescope/telescope-fzy-native.nvim"}}
	}
        use 'simrat39/rust-tools.nvim'
	use 'voldikss/vim-floaterm'	
	use 'liuchengxu/vista.vim'
	use 'kyazdani42/nvim-tree.lua'
	use 'glepnir/dashboard-nvim'
	use 'metakirby5/codi.vim'
end)


