require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = {
        "bashls",
        "cssls",
        "dockerls",
        "gopls",
        "html",
        "jsonls",
        "pyright",
        "rust_analyzer",
        "tsserver",
        "vimls",
        "yamlls",
    },
})

require("lspconfig").pyright.setup({})
require("lspconfig").rust_analyzer.setup({})
-- require("lspconfig").clangd.setup({})

local null_ls = require("null-ls")
null_ls.setup({
	sources = {
		null_ls.builtins.formatting.black, -- python formatter
		null_ls.builtins.formatting.isort, -- python import sort
		null_ls.builtins.diagnostics.flake8, -- python linter
		null_ls.builtins.formatting.stylua, -- lua formatter
		-- null_ls.builtins.diagnostics.luacheck, -- lua linter
	},
})

vim.call('ddc#custom#patch_global', 'ui', 'native')
vim.call('ddc#custom#patch_global', 'sources', {'around', 'nvim-lsp'})
vim.call('ddc#custom#patch_global', 'sourceOptions', {
    ['_'] = { matchers = {'matcher_head'} },
    ['nvim-lsp'] = {
        mark = 'L',
        forceCompletionPattern = '\\.\\w*|:\\w*|->\\w*'
    }
})
vim.call('ddc#custom#patch_global', 'sourceParams', {
    ['nvim-lsp'] = { kindLabels = { ['Class'] = 'c' } }
})

-- discord
