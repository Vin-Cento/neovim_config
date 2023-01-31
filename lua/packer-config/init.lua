return require("packer").startup(function()
	--> BASE
	use("SirVer/ultisnips") --> snippets
	use("hrsh7th/nvim-cmp") --> autocompletion
	use("ldelossa/litee.nvim") --> package framework
	use("onsails/lspkind-nvim") --> icons for lsp completion
	use("nvim-lua/plenary.nvim") --> better async library
	use("neovim/nvim-lspconfig") --> configurate lsp client
	use("wbthomason/packer.nvim") --> plugin packages manager
	use("williamboman/mason.nvim") --> diagnistocs, formattings, code actions package manager
	use("kyazdani42/nvim-tree.lua") --> filetree
	use("nvim-telescope/telescope.nvim") --> telescope fzf viewing
	use("jose-elias-alvarez/null-ls.nvim") --> diagnistocs, formattings, code actions
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) --> treesitter

	--> MIDDLEWARE
	use("williamboman/mason-lspconfig.nvim") --> bridge mason and lsp
	use("jay-babu/mason-null-ls.nvim") --> bridge mason and lsp

	--> Looks
	use("romgrk/barbar.nvim") --> tabs
	use("EdenEast/nightfox.nvim") --> theme
	use("nvim-lualine/lualine.nvim") --> statusline
	use("norcalli/nvim-colorizer.lua") --> color
	use("kyazdani42/nvim-web-devicons") --> icons
	use("lukas-reineke/indent-blankline.nvim") --> indent

	--> Filetree
	use("ahmedkhalf/project.nvim") --> sync filetree with project

	--> Git
	use("ldelossa/gh.nvim") --> github
	use("tpope/vim-fugitive") --> git shortcuts
	use("airblade/vim-gitgutter") --> git sidebar

	--> Quality of Life
	use("phaazon/hop.nvim") --> sneak
	use("windwp/nvim-autopairs") --> autopairs
	use("Pocco81/true-zen.nvim") --> focus view
	use("numToStr/Comment.nvim") --> comment lines
	use("akinsho/toggleterm.nvim") --> terminal
	use("lewis6991/impatient.nvim") --> caching
	use({ "folke/which-key.nvim" }) --> keybinding help
	use({ "ethanholz/nvim-lastplace" }) --> checkpoint
	use({ "iamcco/markdown-preview.nvim", run = "cd app && yarn install" }) --> markdown preview

	--> Telescope
	use("nvim-telescope/telescope-project.nvim") --> pull up projects
	use({ -->better fzf
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	})

	--> treesitter & treesitter modules/plugins
	use("p00f/nvim-ts-rainbow") --> better pairing color
	use("nvim-treesitter/playground") --> toggle treesitter
	use("nvim-treesitter/nvim-treesitter-refactor") --> refactor variables
	use("nvim-telescope/telescope-media-files.nvim") --> show media
	use("JoosepAlviste/nvim-ts-context-commentstring") --> better comment
	use("nvim-treesitter/nvim-treesitter-textobjects") --> better textobjects

	--> completion
	use("f3fora/cmp-spell") --> spell
	use("hrsh7th/cmp-path") --> filepath
	use("hrsh7th/cmp-buffer") --> buffer words
	use("hrsh7th/cmp-cmdline") --> commandline
	use("hrsh7th/cmp-nvim-lsp") --> lsp completion
	use("quangnguyen30192/cmp-nvim-ultisnips") --> ultisnips
	use({ "tzachar/cmp-tabnine", run = "./install.sh" }) -->tabnine

	-- https://github.com/mfussenegger/nvim-ansible ansible
end)
