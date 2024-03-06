-- Required for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('plugins') -- Plugins + Plugin Manager

require('settings')

require('keymappings')

-- Plugin Settings
-- Theme
require('plugins-settings.onedark')
 
-- Telescope
require('plugins-settings.nvim-web-devicons')
require('plugins-settings.telescope')
