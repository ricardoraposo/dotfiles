local opts = { noremap = true, silent = true }

--Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--	 normal mode = "n"
--	 insert mode = "i"
--	 visual mode = "v"
--	 visual-block mode = "x"
--	 term mode = "t"
--	 command mode = "c"

-- Disabling dumb stuff
keymap("n", "<Up>", "<nop>", opts)
keymap("n", "<Down>", "<nop>", opts)
keymap("i", "<Up>", "<nop>", opts)
keymap("i", "<Down>", "<nop>", opts)
keymap("i", "<Left>", "<nop>", opts)
keymap("i", "<Right>", "<nop>", opts)
keymap("n", "(", "<nop>", opts)
keymap("n", ")", "<nop>", opts)

-- Normal
keymap("n", "<leader>n", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>clz", ":set conceallevel=0<CR>", opts)
keymap("n", "<leader>clt", ":set conceallevel=2<CR>", opts)
keymap("n", "<S-h>", "<C-w>h", opts)
keymap("n", "<S-l>", "<C-w>l", opts)
keymap("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", opts)

-- Resize with arrows
keymap("n", "<M-Up>", "<cmd>resize +2<CR>", opts)
keymap("n", "<M-Down>", "<cmd>resize -2<CR>", opts)
keymap("n", "<M-Left>", "<cmd>vertical resize +2<CR>", opts)
keymap("n", "<M-Right>", "<cmd>vertical resize -2<CR>", opts)
keymap("n", "<leader>vv", "<cmd>vnew<CR>", opts)
keymap("n", "<leader>vh", "<cmd>new<CR>", opts)

-- Buffer commands
keymap("n", "<leader>qb", ":bd<CR>", opts)
keymap("n", "<Right>", ":bn<CR>", opts)
keymap("n", "<Left>", ":bp<CR>", opts)
keymap("n", "<leader><leader>", "<C-^>", opts) -- Toggle between last buffers

-- Insert --
-- Goes to insert mode
keymap("i", "<C-c>", "<ESC>", opts)
keymap("i", "jk", "<ESC>", opts)
keymap({ "i", "n" }, "<C-s>", "<cmd>w<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<S-j>", ":m .+1<CR>==", opts)
keymap("v", "<S-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Telescope

keymap("n", "<C-f>", "<cmd>NvimTreeClose<CR><cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>dn", "<cmd>NvimTreeClose<CR><cmd>Telescope find_files cwd=~/.config/nvim/<CR>", opts)
keymap("n", "<leader>do", "<cmd>NvimTreeClose<CR><cmd>Telescope find_files cwd=~/Documents/notes/org/<CR>", opts)
keymap("n", "<leader>df", "<cmd>lua require'telescope.builtin'.find_files( { cwd = vim.fn.expand('%:p:h') })<CR>", opts)
keymap("n", "<leader>db", "<cmd>lua require'telescope.builtin'.buffers()<CR>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'telescope.builtin'.colorscheme()<CR>", opts)
keymap("n", "<leader>dg", "<cmd>lua require'telescope.builtin'.live_grep()<CR>", opts)
keymap("n", "<leader>dd", "<cmd>Telescope diagnostics<CR>", opts)
keymap("n", "<leader>du", "<cmd>Telescope undo<CR>", opts)
keymap("n", "<leader>/", "<cmd>Telescope current_buffer_fuzzy_find fuzzy=false case_mode=ignore_case<CR>", opts)

-- Harpoon

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
keymap("n", "<leader>m", mark.add_file)
keymap("n", "<C-e>", ui.toggle_quick_menu)
keymap("n", "<C-j>", "<cmd>lua require'harpoon.ui'.nav_file(1)<cr>", opts)
keymap("n", "<C-k>", "<cmd>lua require'harpoon.ui'.nav_file(2)<cr>", opts)
keymap("n", "<C-l>", "<cmd>lua require'harpoon.ui'.nav_file(3)<cr>", opts)
keymap("n", "<C-h>", "<cmd>lua require'harpoon.ui'.nav_file(4)<cr>", opts)

-- Git Stuff
keymap("n", "<leader>lg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Compile

keymap("n", "<leader>rc", "<cmd>Jaq<CR>", opts)                         -- Run Code
keymap("n", "<leader>ccc", "<cmd>!g++ -g % -o %:r<CR>", opts)           -- Compile cpp
keymap("n", "<leader>ccr", "<cmd>!g++ -g % -o %:r && ./%:r <CR>", opts) -- Compile and run cpp
keymap("n", "<leader>cjj", "<cmd>!javac %<CR>", opts)                   -- Compile Java

-- Better navigation

keymap("n", "<leader>co", "<cmd>lua vim.opt.cursorcolumn = true<CR>", opts)
keymap("n", "<leader>cp", "<cmd>lua vim.opt.cursorcolumn = false<CR>", opts)
keymap({ "n", "v", "x" }, "{", "}", opts)
keymap({ "n", "v", "x" }, "}", "{", opts)

-- Greatest remaps

keymap("n", "G", "Gzz", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "Y", "y$", opts)
keymap("v", "<leader>y", '"+ym', opts)
keymap("n", "<leader><", "0f>ldt<", opts)
keymap("n", "<leader>sc", "<cmd>:so %<cr>", opts)

vim.cmd("inoremap , ,<c-g>u")
vim.cmd("inoremap . .<c-g>u")
vim.cmd("inoremap ! !<c-g>u")
vim.cmd("inoremap ? ?<c-g>u")

-- I'm dumb and I type stuff wrong too much

keymap("n", "<cmd>WQ", "<cmd>wq", opts)
keymap("n", "<cmd>Wq", "<cmd>wq", opts)
keymap("n", "<cmd>W", "<cmd>w", opts)
keymap("n", "<cmd>Q", "<cmd>q", opts)
