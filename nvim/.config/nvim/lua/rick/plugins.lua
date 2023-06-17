local fn = vim.fn

--Automatically install packer

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file

vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("packer_user_config", { clear = true }),
  pattern = "plugins.lua",
  command = "so % | PackerSync",
})

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim"              -- Have packer manage itself
  use "nvim-lua/popup.nvim"                 -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim"               -- Useful lua functions used ny lots of plugins
  use "akinsho/toggleterm.nvim"             -- Terminal inside vim
  use "lambdalisue/battery.vim"             -- Adds battery percentage of laptop to statusline
  use "gelguy/wilder.nvim"                  -- For when I forget wtf I want to type
  use "is0n/jaq-nvim"                       -- Execute code from within vim
  use "lukas-reineke/indent-blankline.nvim" -- Adds some visual stuff for code indents
  use "folke/zen-mode.nvim"                 -- For me not to get neck pain

  -- Colorscheme
  use "rose-pine/neovim"
  use { "catppuccin/nvim", as = "catppuccin" }

  -- cmp plugins
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-nvim-lua"
  -- use("github/copilot.vim")

  -- snippets
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"

  -- LSP
  use "neovim/nvim-lspconfig" -- LSP itself
  use({
    "williamboman/mason.nvim", -- make easier to get lsp servers
    "williamboman/mason-lspconfig.nvim",
  })
  -- use "j-hui/fidget.nvim"
  use "jose-elias-alvarez/null-ls.nvim" -- formatting and diagnostics lsp servers
  use "OmniSharp/omnisharp-vim"  -- csharp bullshit
  use "folke/trouble.nvim" -- get diag and function references in an easier way
  use({
    "glepnir/lspsaga.nvim", -- better lsp ui
    opt = true,
    branch = "main",
    event = "LspAttach",
    config = function()
      require("lspsaga").setup({
        finder = {
          keys = {
            quit = { "q", "<ESC>", "<C-c>" }
          }
        },
        symbol_in_winbar = {
          enable = false,
        },
        lightbulb = {
          enable = false
        }
      })
    end
  })

  -- Telescope & Harpoon
  use "nvim-telescope/telescope.nvim"
  use "debugloop/telescope-undo.nvim"
  use "ThePrimeagen/harpoon"

  -- Nvim Tree
  use({ "kyazdani42/nvim-tree.lua", branch = "master" })
  use 'nvim-tree/nvim-web-devicons'

  -- Treesitter
  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  })
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "windwp/nvim-ts-autotag"
  use "nvim-treesitter/playground"
  -- use "nvim-treesitter/nvim-treesitter-context"
  use "nvim-treesitter/nvim-treesitter-textobjects"

  -- Comments Plugin
  use "terrortylor/nvim-comment"
  use "JoosepAlviste/nvim-ts-context-commentstring"

  -- I also want org mode
  use "nvim-orgmode/orgmode"
  use "akinsho/org-bullets.nvim"
  use "ranjithshegde/orgWiki.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
