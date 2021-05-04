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
--require('lsp')
--require('telescope')
vim.g['onedark_termcolors'] = 256
vim.g['cursorword_highlight'] = true
vim.cmd [[colorscheme  gruvbox]]
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
  matchup = {
    enable = true,              -- mandatory, false will disable the whole extension
    disable = {"lua", "c", "ruby", "rust"},  -- optional, list of language that will be disabled
  },
}

vim.g.vista_icon_indent = {"╰─▸ ", "├─▸ "}
vim.g.vista_default_executive = 'ctags'

vim.g.dashboard_default_executive ='fzf'
vim.g.dashboard_preview_command = 'cat'
vim.g.dashboard_preview_pipeline = 'lolcat'
vim.g.dashboard_preview_file = 'logo.cat'
vim.g.dashboard_preview_file_height = 9
vim.g.dashboard_preview_file_width = 80

require'terminal'.setup()

require("lsp-colors").setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})

require'bufferline'.setup{
  options = {
    view = "multiwindow",
    numbers = "none",
    number_style = "superscript", -- buffer_id at index 1, ordinal at index 2
    mappings = true,
    buffer_close_icon= '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is deduplicated
    tab_size = 18,
    diagnostics = "nvim_lsp"
   }
}

-- require('feline').setup()
require("lsp")
require'lsp_signature'.on_attach()
