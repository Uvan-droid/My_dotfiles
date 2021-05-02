
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

nvim_lsp.rust_analyzer.setup{}
