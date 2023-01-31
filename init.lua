--> Install
require("packer-config") --> install plugin

--> Setting
require("options")
require("keymap-config")
require("filetype_rules")

--> Base
require("lsp-config")
require("null-ls-config")
require("ultisnip-config")
require("nvim-tree-config")
require("telescope-config")
require("treesitter-config")

--> Filetree
require("project-root-config")

--> Looks
require("barbar-config") --> tabs
require("lualine-config") --> statusline
require("nightfox-config") --> theme
require("colorizer-config") --> color
require("indent-blankline-config") --> indent

--> Quality of Life
require("hop-config") --> sneak
require("truezen-config") --> focus view
require("whichkey-config") --> key binding popup
require("impatient-config") --> caching
require("autopairs-config") --> autopairs
require("lastplace-config") --> checkpoint
require("toggleterm-config") --> terminal
require("comment-nvim-config") --> comment lines

--> Git
require("github-config") --> github
require("git-gutter-config") --> git sidebar

--> Completion
require("completion")
