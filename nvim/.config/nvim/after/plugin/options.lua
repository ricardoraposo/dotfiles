local o = vim.opt

-- o.guicursor = "i:block"
o.backup = false
o.backupcopy = "yes"
o.cmdheight = 1
o.conceallevel = 1
o.concealcursor = "nc"
o.fileencoding = "utf-8"
o.hlsearch = false
o.incsearch = true
o.ignorecase = true
o.mouse = "a"
o.pumheight = 10
o.showmode = true
o.showtabline = 0
o.smartcase = true
o.smartindent = true
o.splitbelow = true
o.splitright = true
o.swapfile = false
o.termguicolors = true
o.timeoutlen = 1000
o.undofile = true
o.updatetime = 50
o.writebackup = false
o.expandtab = true
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
o.cursorline = true
o.numberwidth = 2
o.signcolumn = "no"
o.laststatus = 2
o.statusline = "%#Normal#%f %m %=%r %= %{battery#sign()} %{battery#value()}%%   %10(%{strftime('%H:%M:%S %p')} %)"
o.ruler = false
o.wrap = false
o.scrolloff = 8
o.sidescrolloff = 8
o.hidden = true
o.foldmethod = "manual"
-- o.colorcolumn = "80"
o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.shortmess:append("c")
o.clipboard:append({ "unnamedplus" })

vim.g.OmniSharp_server_use_net6 = 1
vim.g.OmniSharp_server_stdio = 1
-- vim.g.OmniSharp_server_use_mono = 1


vim.cmd("language en_US.UTF-8")
vim.cmd("set t_ZH=^[[3m")
vim.cmd("set t_ZR=^[[23m")
vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd("set iskeyword+=-")
vim.cmd("set iskeyword-=_")
vim.cmd("let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']")
vim.cmd("let g:rainbow_active = 1")
vim.cmd("syntax on")

require("nightfox").setup({
    options = {
        transparent = true
    },
    groups = {
        terafox = {
            Visual = { bg = "#277282" }
        }
    }
})

require('palenightfall').setup({
    transparent = true,
    color_overrides = {
        foreground = "#ebebeb"
    },
})

vim.cmd.colorscheme("palenightfall")
vim.cmd("highlight CursorLine guibg=none")
vim.cmd("highlight Visual guibg='#232534'")
