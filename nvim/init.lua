vim.wo.number = true
vim.o.termguicolors = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.bo.tabstop = 4
vim.bo.shiftwidth = vim.bo.tabstop 
vim.o.mouse = 'a'
vim.o.hidden = true
vim.bo.swapfile = false
-- vim.bo.autoindent = true
vim.o.ruler = true
vim.wo.cursorline = true
vim.g.mapleader = " "

require('plugin')
require('map')
require('statusline')
require('neotree')
vim.g['onedark_termcolors'] = 256

vim.cmd [[colorscheme gruvbox]]
-- Setup
require('lspfuzzy').setup {}
-- vim.g['fzf_preview_window'] = ' right: 50% ' , ' ctrl- / '

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", 
  ignore_install = { "javascript" }, 
  highlight = {
    enable = true,              
    disable = { "c", "rust" },  
  },
}

require'bufferline'.setup{
  options = {
    view = "multiwindow",
    mappings = true,
    buffer_close_icon= '',
    modified_icon = '●',
    number = "both",
	number_style = "superscript", 
	close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is deduplicated
    tab_size = 18,
    diagnostics = "nvim_lsp",
    show_buffer_close_icons = true,
    show_close_icon = true,
    -- show_tab_indicators = true,
    -- persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    -- can also be a table containing 2 custom separators
    -- [focused and unfocused]. eg: { '|', '|' }
    separator_style = "thin",
  }
}

vim.g.vista_icon_indent = {"╰─▸ ", "├─▸ "}
vim.g.vista_default_executive = 'ctags'

vim.g.dashboard_default_executive ='fzf'
vim.g.dashboard_preview_command = 'cat'
vim.g.dashboard_preview_pipeline = 'lolcat'
vim.g.dashboard_preview_file = 'logo.cat'
vim.g.dashboard_preview_file_height = 9
vim.g.dashboard_preview_file_width = 80
-- require('lualine').setup{
--	options = {
--  		section_separators = {'', ''},
--  		component_separators = {'', ''}
--	}
--}


