local lspconfig = require('lspconfig')


local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

lspconfig.solidity.setup({
  capabilities = capabilities,
  settings = {
    solidity = {
      includePath = '',
      remapping = { ["@OpenZeppelin/"] = 'OpenZeppelin/openzeppelin-contracts@4.6.0/' },
      allowPaths = {}
    }
  },
})

lspconfig.tsserver.setup({
  capabilities = capabilities,
})


local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
  ['<Tab>'] = cmp.mapping(function(fallback)
    if cmp.visible() then
      local entry = cmp.get_selected_entry()
      if not entry then
        -- Select the first item if none is selected, then confirm
        cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
        cmp.confirm({ select = true })
      else
        cmp.confirm({ select = true }) -- Confirm the selected item
      end
    else
      fallback() -- Fallback to default tab behavior if not showing suggestions
    end
  end, { 'i', 's', 'c' }),
  ['<C-b>'] = cmp.mapping.scroll_docs(-4),
  ['<C-f>'] = cmp.mapping.scroll_docs(4),
  ['<C-Space>'] = cmp.mapping.complete(),
  ['<C-e>'] = cmp.mapping.abort(),
  ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item.
}, 
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  })
})

