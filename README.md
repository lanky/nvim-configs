# My neovim things
A hacked-together neovim configuration, originally based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim), with quite a lot of customisation.

Specifically:

- plugin code in `lua/plugins` in individual files
- plugin customisations in `after/plugin` (keymaps etc)
- other user-specific configuration in `lua/config`
- filetype overrides in `after/ftplugin`

layout at time of creation:
    .
    ├── after
    │   ├── ftplugin
    │   │   └── lua.lua
    │   └── plugin
    │       └── which-key.lua           # keymap definitions
    ├── ftplugin
    │   ├── lua.lua                     # customisation for lua files
    │   └── python.lua
    ├── init.lua                        # base configuration, some simple plugins still in here
    ├── lazy-lock.json
    └── lua
        ├── config
        │   ├── commands.lua            # user autocommands and groups
        │   └── core.lua                # the basic vim.opt settngs
        └── plugins
            ├── autopairs.lua           # auto-insert pairs like {}
            ├── bufferline.lua          # prettier tablines
            ├── codedark.lua            # codedark colorscheme
            ├── context.lua             # treesitter-context
            ├── dressing.nvim           # UI improvements, particularly mason language filters
            ├── easy-align.lua          # align on characters
            ├── filetree.lua            # neo-tree
            ├── fugitive.lua            # git integration
            ├── gitsigns.lua            # git symbols in left margin
            ├── lazydev.lua             # updated version of neodev for 0.10+
            ├── lualine.lua             # statusline, replaces mini.status
            ├── matchup.lua             # match on words (begin/end etc) as well as punctuation
            ├── notify.lua              # nice pop-up notifications  
            ├── nvim-telescope-ui.lua   # telescope UI improvement
            ├── rainbow.lua             # rainbow-coloured matchit symbols
            ├── symbols-outline.lua     # pop-up code symbol outline
            ├── trouble.lua             # nice diagnostics with lsp integration
            └── which-key.lua           # keybind organisation

