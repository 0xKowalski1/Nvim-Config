-- Required for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('plugins') -- Plugins + Plugin Manager

require('settings')

require('keymappings')

-- Plugin Settings
-- Theme
require('plugins-settings.onedark')
 
-- File Explorer
require('plugins-settings.nvim-tree')
require('plugins-settings.nvim-web-devicons')

-- Telescope
require('plugins-settings.telescope')
