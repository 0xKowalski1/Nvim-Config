return require('packer').startup(function(use)
  -- Package Manager  
  use 'wbthomason/packer.nvim'
   
  -- Theme
  use 'navarasu/onedark.nvim'

  -- Tree sitter helper
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
  }

  -- LSP
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use "ray-x/lsp_signature.nvim" -- Signature help

  -- Telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { 'nvim-lua/plenary.nvim' } 
  }

  -- Harpoon
  use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"}, {"nvim-telescope/telescope.nvim"} }
  }

  -- Dashboard 
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
  }

  -- Glow for markdown previews
  use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}

  -- Format (on save)
  use 'sbdchd/neoformat'
end)

