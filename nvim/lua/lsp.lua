
vim.lsp.set_log_level("debug")
nvim_lsp = require'lspconfig'
nvim_lsp.rls.setup {
  settings = {
    rust = {
      unstable_features = true,
      build_on_save = false,
      all_features = true,
    },
    cmd = { "rls" },
    filetypes = { "rust" },
  },
}

local opts = {
    tools = { -- rust-tools options
         autoSetHints = true,
        hover_with_actions = true,
        runnables = {
            use_telescope = true

            -- rest of the opts are forwarded to telescope
        },
        inlay_hints = {
            -- wheter to show parameter hints with the inlay hints or not
            show_parameter_hints = true,

           parameter_hints_prefix = "<-",
            other_hints_prefix  = "=>",
        },
    },
    server = {}, 
}

require('rust-tools.inlay_hints').toggle_inlay_hints(opts)

local opts_ = {
    -- whether to use telescope for selection menu or not
    -- default: true
    use_telescope = true
    -- rest of the opts are forwarded to telescope
}
require('rust-tools.runnables').runnables(opts_)

require'rust-tools.expand_macro'.expand_macro()


require('rust-tools').setup(opts)

nvim_lsp.rust_analyzer.setup{
		settings = {
			["rust-analyzer"] = {
				completion = {
					enableAutoimportCompletions = true
			},
			assist = {
					importMergeBehaviour = "full",
					importPrefix = "by_crate"
			}
		}
	}
}

