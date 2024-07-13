-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.python3_host_prog = vim.fs.normalize("~/.virtualenvs/nvim")
vim.g.vim_markdown_conceal = 0

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

require("lanky.lazy")
-- core vim options in  lua/config/core.lua
require("lanky.configs.core")
-- require("lazy")

-- LSP capabilities will be global, so define it here and included files should see it?
local capabilities = vim.lsp.protocol.make_client_capabilities()
-- global variable.
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- presuming I have mason installed etc

-- global list of LSP servers to install
