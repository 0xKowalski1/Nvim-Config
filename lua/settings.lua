local set = vim.opt  -- Shortcut for setting options

-- Basic UI Configurations
set.number = true        -- Show line numbers
set.cursorline = true    -- Highlight the current line

-- Basic Editing Configurations
set.expandtab = true     -- Use spaces instead of tabs
set.shiftwidth = 4       -- Size of an indent
set.tabstop = 4          -- Number of spaces tabs count for
set.smartindent = true   -- Insert indents automatically

-- Search Configurations
set.ignorecase = true    -- Ignore case in search patterns
set.smartcase = true     -- Smart case

-- System Clipboard
set.clipboard = 'unnamedplus'   -- Access system clipboard

-- Disable swap files for minimal distraction
set.swapfile = false      -- Disable swapfile

