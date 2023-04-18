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
    use("wbthomason/packer.nvim")  -- Have packer manage itself
    use("nvim-lua/popup.nvim")     -- An implementation of the Popup API from vim in Neovim
    use("nvim-lua/plenary.nvim")   -- Useful lua functions used ny lots of plugins
    use("akinsho/toggleterm.nvim") -- Terminal inside vim
    use("lambdalisue/battery.vim") -- Adds battery percentage of laptop to statusline

    -- Colorschemes
    use("Mofiqul/vscode.nvim")

    -- cmp plugins
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-nvim-lua")
    -- use({ "tzachar/cmp-tabnine", run = "./install.sh" })

    -- snippets
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use("rafamadriz/friendly-snippets")

    -- LSP
    use("neovim/nvim-lspconfig")
    use({
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    })
    use("j-hui/fidget.nvim")
    use("jose-elias-alvarez/null-ls.nvim")

    -- TJ & Prime
    use("nvim-telescope/telescope.nvim")
    use("ThePrimeagen/harpoon")

    -- Nvim Tree
    use({
        "kyazdani42/nvim-tree.lua",
        requires = {
            "nvim-tree/nvim-web-devicons", -- optional, for file icons
        },
        branch = "master",
    })

    -- Treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    })
    use("windwp/nvim-autopairs") -- Autopairs, integrates with both cmp and treesitter
    use("windwp/nvim-ts-autotag")
    use("nvim-treesitter/playground")
    use("nvim-treesitter/nvim-treesitter-context")

    -- Comments Plugin
    use("JoosepAlviste/nvim-ts-context-commentstring")
    use("terrortylor/nvim-comment")

    -- Api stuff
    use("NTBBloodbath/rest.nvim")

    -- Easier movements
    use({
        "phaazon/hop.nvim",
        branch = "v2", -- optional but strongly recommended
        config = function()
            require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
        end,
    })

    -- Git stuff
    use("TimUntersberger/neogit")

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
