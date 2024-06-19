local pylsp_opts = {
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

local pylsp = require("mason-registry").get_package("python-lsp-server")

pylsp:on("install:success", function()
	vim.fn.system({
		vim.fn.expand("~/.local/share/nvim/mason/packages/python-lsp-server/venv/bin/python"),
		"-m",
		"pip",
		"install",
		"pylsp-mypy",
		"pyls-isort",
		"python-lsp-black",
		"pylsp-rope",
		"python-lsp-ruff",
	})
end)
