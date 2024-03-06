return require('packer').startup(function(use)
  -- Package Manager  
  use 'wbthomason/packer.nvim'
 
  -- Theme
  use 'navarasu/onedark.nvim'

  -- File Explorer
  use {
    'nvim-tree/nvim-tree.lua', -- Explorer
    requires = {
      'nvim-tree/nvim-web-devicons', -- Icons
    },
  }

  -- Telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  }


end)

