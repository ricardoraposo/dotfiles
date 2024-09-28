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

local plugins = {
  "nvim-lua/popup.nvim",
  "nvim-lua/plenary.nvim",
  "gelguy/wilder.nvim",
  -- "ojroques/vim-oscyank",
  { "mg979/vim-visual-multi" },
  "norcalli/nvim-colorizer.lua",
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
    },
  },

  { "neoclide/coc.nvim",         branch = "release" },
  { "akinsho/git-conflict.nvim", version = "*",            config = true },

  -- Language specific stuff
  { "olexsmir/gopher.nvim",      build = ":GoInstallDeps", lazy = true },
  { "https://github.com/reasonml-editor/vim-reason-plus"},

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "debugloop/telescope-undo.nvim",
    },
  },

  -- Nvim Tree
  {
    "kyazdani42/nvim-tree.lua",
    branch = "master",
    lazy = true,
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  -- Colorscheme stuff
  { "ricardoraposo/gruvbox-minor.nvim" },
  { "sainnhe/sonokai" },
  { 'ferdinandrau/lavish.nvim', priority = 1000 },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = true,
    dependencies = {
      { "windwp/nvim-autopairs", lazy = true },
      "nvim-treesitter/playground",
    },
  },
  {
    "folke/ts-comments.nvim",
    opts = {},
    event = "VeryLazy",
    enabled = vim.fn.has("nvim-0.10.0") == 1,
  },

  -- Doc stuff
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = true,
  },
  { "stevearc/dressing.nvim" },

  -- Backend stuff
  {
    "vhyrro/luarocks.nvim",
    lazy = true,
    priority = 1000,
    config = true,
  },

  -- Git integrations
  { "FabijanZulj/blame.nvim", lazy = true },
}

local opts = {}

require("lazy").setup(plugins, opts)
