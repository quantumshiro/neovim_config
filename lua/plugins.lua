local function map(mode, lhs, rhs, opts) local options = { noremap = true }
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.cmd('packadd vim-jetpack')
require('jetpack.packer').startup(function(use)
    use { 'tani/vim-jetpack', opt = 1 }
    use { 'github/copilot.vim' }
    -- lsp
    use { 'neovim/nvim-lspconfig' }
    use { 'williamboman/mason.nvim' }
    use { 'williamboman/mason-lspconfig.nvim' }
    run = ":MasonUpdate"
    use { "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" }

    -- input completion
    use { 'Shougo/ddc.vim' }
    use {'vim-denops/denops.vim'}
    use {'Shougo/ddc-ui-native'}
    use { 'Shougo/pum.vim' }
    use { 'Shougo/ddc-source-around' }
    use { 'Shougo/ddc-matcher_head' }
    use { 'Shougo/ddc-sorter_rank' }
    use { 'LumaKernel/ddc-file' }
    use { 'tani/ddc-fuzzy' }
    use { 'Shougo/ddc-converter_remove_overlap' }
    use { 'Shougo/ddc-nvim-lsp' }

    -- rust
    use { 'rust-lang/rust.vim' }
    use { 'simrat39/rust-tools.nvim' }

    -- zig
    use { 'ziglang/zig.vim' }

    -- discord
    -- use {'Cyuria/discord.nvim'}
    
    -- clangd
    -- use { 'p00f/clangd_extensions.nvim' }
end)

local fn = vim.fn
fn["ddc#custom#patch_global"]('ui', 'native')
fn["ddc#custom#patch_global"]('sources', {'around'})

fn["ddc#custom#patch_global"]('sourceOptions', {
  _ = {
    matchers = {'matcher_fuzzy'},
    sorters = {'sorter_fuzzy'},
    converters = {'converter_fuzzy'},
  }
})
fn["ddc#enable"]()

-- zig
vim.g.zig_fmt_autosave = 0

-- vim.api.nvim_set_keymap('i', '<Tab>', [[<Cmd>lua require('pum.map').insert_relative(1)<CR>]], {noremap = true})
-- vim.api.nvim_set_keymap('i', '<S-Tab>', [[<Cmd>lua require('pum.map').insert_relative(-1)<CR>]], {noremap = true})

