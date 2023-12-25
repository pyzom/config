local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
 {
    "sainnhe/gruvbox-material",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme gruvbox-material]])
    end,
  },
'nvim-lua/plenary.nvim',
'dylanaraps/wal.vim',

{
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
-- or                            , branch = '0.1.x',
  },
{
    'nvim-treesitter/nvim-treesitter',
    run = { ":TSUpdate" }
},
{
    'jamespeapen/Nvim-R',
    lazy = false,
},

'nvim-lualine/lualine.nvim',

'nvim-treesitter/playground',

'ThePrimeagen/harpoon',
'Raimondi/delimitMate',
'mbbill/undotree',
'folke/which-key.nvim',
'folke/neodev.nvim',
'tpope/vim-fugitive',
'tpope/vim-surround',
'tpope/vim-commentary',
'Civitasv/cmake-tools.nvim',
{
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  

  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',

      -- Adds LSP completion capabilities
      'hrsh7th/cmp-nvim-lsp',

      -- Adds a number of user-friendly snippets
      'rafamadriz/friendly-snippets',
    },
  },


'ms-jpq/chadtree', {branch = chad}, run ={ 'python3 -m chadtree deps'},

{
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
  },





-- COQ install
-- main one
'ms-jpq/coq_nvim', {branch = coq},
-- 9000+ Snippets
'ms-jpq/coq.artifacts', {branch = artifacts},

-- lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
-- Need to **configure separately**

'ms-jpq/coq.thirdparty', {"branch = 3p"}
-- - shell repl
-- - nvim lua api
-- - scientific calculator
-- - comment banner
-- - etc

})
