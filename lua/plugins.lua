return require('packer').startup(function(use)
  -- Package Manager  
  use 'wbthomason/packer.nvim'
 
  -- Theme
  use 'navarasu/onedark.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { 'nvim-lua/plenary.nvim' } 
  }
  
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" }
  }

end)

