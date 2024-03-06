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
