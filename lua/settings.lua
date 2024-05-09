local set = vim.opt  -- Shortcut for setting options

-- Basic UI Configurations
set.number = true        -- Show line numbers
set.cursorline = true    -- Highlight the current line

-- Basic Editing Configurations
set.expandtab = true     -- Use spaces instead of tabs
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
        vim.cmd("Alpha")
    end
  end,
})

-- Format on save
vim.cmd([[
  autocmd BufWritePre * if &filetype != 'markdown' | Neoformat | endif
]])

