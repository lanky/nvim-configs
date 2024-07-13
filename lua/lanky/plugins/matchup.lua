return {
  "andymass/vim-matchup",
  event = "CursorMoved",
  config = function()
    vim.g.matchup_matchparen_offscreen = { method = "popup" }
  end,
}

-- enable treesitter integration
-- lvim.builtin.treesitter.matchup.enable = true
