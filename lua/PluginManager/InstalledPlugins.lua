function InstallLSP (use) 
    use 'neovim/nvim-lspconfig'
    use 'nvim-treesitter/nvim-treesitter'
    use 'kabouzeid/nvim-lspinstall'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
end

function InstallPlugins (use)
 use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }
 use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'}, {"nvim-lua/popup.nvim"} } }
 InstallLSP(use)
 use "Pocco81/Catppuccino.nvim"
 use { 'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true} }
 use 'airblade/vim-gitgutter'
end

return InstallPlugins;
