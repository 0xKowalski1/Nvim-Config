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
    file_browser = {
      hidden = true,
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {},
    },
  },
}

require("telescope").load_extension "file_browser"


