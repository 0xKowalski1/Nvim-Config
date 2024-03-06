return require('packer').startup(function(use)
  -- Package Manager  
  use 'wbthomason/packer.nvim'
 
  -- Theme
  use 'navarasu/onedark.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  -- Telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { 'nvim-lua/plenary.nvim' } 
  } 
  -- Telescope file browser
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" }
  }

  -- Dashboard 
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
  }
end)

