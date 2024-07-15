local capabilities = vim.lsp.protocol.make_client_capabilities()
-- global variable.
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

local servers = {
  stylua = {},
}

require("mason").setup()

require("mason-lspconfig").setup {
  automatic_installation = true,
}

require("mason-lspconfig").setup_handlers {
  function(server_name)
    require("lspconfig")[server_name].setup {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = (servers[server_name] or {}).settings,
      filetypes = (servers[server_name] or {}).filetypes,
    }
  end,
}
