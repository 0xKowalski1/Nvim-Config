local lspconfig = require 'lspconfig'
lspconfig.solidity.setup({
  -- on_attach = on_attach, -- probably you will need this.
  -- capabilities = capabilities,
  settings = {
    -- example of global remapping
    solidity = {
        includePath = '',
        remapping = { ["@OpenZeppelin/"] = 'OpenZeppelin/openzeppelin-contracts@4.6.0/' },
        -- Array of paths to pass as --allow-paths to solc
        allowPaths = {}
    }
  },
})

require'lspconfig'.tsserver.setup{}

local cmp = require'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-1),
    ['<C-f>'] = cmp.mapping.scroll_docs(1),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  })
})

