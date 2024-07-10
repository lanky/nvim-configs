require("lspconfig").pylsp.setup {
  settings = {
    configurationSources = { "flake8" },
    -- formatCommand = { 'black', 'isort', 'pyre' },
    formatCommand = { "ruff" },
    settings = {
      pylsp = {
        plugins = {
          flake8 = { enabled = false },
          rope_autoimport = {
            enabled = true,
            completions = { enabled = true },
            code_actions = { enabled = true },
          },
          pydocstyle = { enabled = true },
          pyls_mypy = { enabled = true, live_mode = true },
          ruff = {
            enabled = true,
            extendSelect = { "I" },
            preview = true,
            format = { "I" },
          },
        },
      },
    },
  },
}
