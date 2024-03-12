local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Find files using Telescope command-line sugar.
map('n', '<C-p>', '<cmd>Telescope find_files<cr>', opts) -- Find files in cur dir
map('n', '<S-p>', '<cmd>Telescope find_files cwd=~/<cr>', opts) -- Find files in home

-- Live grep using Telescope
map('n', '<C-f>', '<cmd>Telescope live_grep<cr>', opts) -- Grep cur dir
map('n', '<S-f>', '<cmd>Telescope live_grep cwd=~/<cr>', opts) -- Grep home


-- Open file browser
map('n', '<C-space>', ':Telescope file_browser path=%:p:h select_buffer=true<CR>',opts)

-- Vertical split mapping
map('n', '<C-v>', ':vsplit<CR>', opts)

-- Horizontal split mapping
map('n', '<C-s>', ':split<CR>', opts)

-- Navigate splits
map('n', '<C-Up>', '<C-w>k', opts)
map('n', '<C-Down>', '<C-w>j', opts)
map('n', '<C-Left>', '<C-w>h', opts)
map('n', '<C-Right>', '<C-w>l', opts)
