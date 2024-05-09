require('telescope').setup {
  defaults = {
      file_ignore_patterns = {
            "node_modules/.*",
            "yarn.lock",
            "package-lock.json",
            ".git/.*",
        },
  },
  pickers = {
    find_files = {
      hidden = true
    }
  },
  extensions = {
    },
}



