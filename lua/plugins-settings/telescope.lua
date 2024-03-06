require('telescope').setup {
  defaults = {
  },
  pickers = {
  },
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {},
    },
  },
}

require("telescope").load_extension "file_browser"

