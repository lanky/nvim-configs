local wk = require("which-key")

-- diagnostic keymaps
wk.register({
  ["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
  ["<leader>d"] = { name = "[D]ocument", _ = "which_key_ignore" },
  ["<leader>r"] = { name = "[R]ename", _ = "which_key_ignore" },
  ["<leader>s"] = { name = "[S]earch", _ = "which_key_ignore" },
  ["<leader>w"] = { name = "[W]orkspace", _ = "which_key_ignore" },
  ["<leader>t"] = { name = "[T]oggle", _ = "which_key_ignore" },
  ["<leader>h"] = { name = "Git [H]unk", _ = "which_key_ignore" },
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

wk.register({
  ["<leader>h"] = { "Git [H]unk" },
}, { mode = "v" })
