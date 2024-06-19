local wk = require("which-key")

-- diagnostic keymaps
wk.register({
	l = {
		name = "Diagnostics", -- optional group name
		j = { vim.diagnostic.goto_next, "Next Diagnostic" }, -- create a binding with label
		k = { vim.diagnostic.goto_prev, "Previous Diagnostic" },
		e = { vim.diagnostic.open_float, "Show Diagnostic Error messager" },
		q = { vim.diagnostic.setloclist, "Open diagnostic quickfix list" },
	},
	f = {
		name = "File Manager",
		t = { "<cmd>Neotree<cr>", "Open File Tree" },
	},
	w = {
		name = "Window Movement",
		h = { "<C-w><C-h>", "Change to next window Left" },
		j = { "<C-w><C-j>", "Change to next window Down" },
		k = { "<C-w><C-k>", "Change to next window Up" },
		l = { "<C-w><C-l>", "Change to next window Right" },
	},
}, { prefix = "<leader>" }) -- keymaps
