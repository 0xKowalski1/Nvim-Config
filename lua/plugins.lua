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


end)

