local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Find files using Telescope command-line sugar.
map('n', '<C-p>', '<cmd>Telescope find_files<cr>', opts)

-- Live grep using Telescope
map('n', '<C-f>', '<cmd>Telescope live_grep<cr>', opts)

-- Open file browser
map('n', '<space>t', ':Telescope file_browser path=%:p:h select_buffer=true<CR>',opts)
