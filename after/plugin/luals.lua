require("lspconfig").lua_ls.setup {
  Lua = {
    workspace = { checkThirdParty = "Apply" },
    telemetry = { enable = false },
    completion = {
      displayContext = true,
      enable = true,
      showParams = true,
    },
    hint = {
      enable = true,
    },
  },
}
