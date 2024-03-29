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

-- Enable spellcheck for markdown files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.spell = true
    vim.opt_local.spelllang = "en_us"
  end,
})

-- Setup layout
vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    if #vim.fn.argv() == 0 then
        -- Create a vertical split
        vim.cmd("vsplit")
        vim.cmd("Alpha")
        -- Create a horizontal split in the left vertical split
        vim.cmd("wincmd h")
        vim.cmd("split")
        -- Open terminal in the bottom left split
        vim.cmd("wincmd j")
        vim.cmd("resize 15")
        vim.cmd("terminal")
    end
  end,
})

-- Format on save
vim.cmd([[
  autocmd BufWritePre * if &filetype != 'markdown' | Neoformat | endif
]])

