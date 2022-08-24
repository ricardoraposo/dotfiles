local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
    return
end

local keymap = vim.api.nvim_buf_set_keymap

toggleterm.setup({
    size = 15,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    direction = "float",
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
        border = "double",
        width = 120,
        height = 30,
    },
})

function _G.set_terminal_keymaps()
    local opts = { noremap = true, silent = true }
    keymap(0, "t", "<esc>", [[<C-\><C-n>]], opts)
    keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
    keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
    keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
    keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({
    cmd = "lazygit",
    dir = "git_dir",
    hidden = true,
    direction = "float",
    float_opts = {
        border = "double",
        width = 200,
        height = 40,
    },
})

function _LAZYGIT_TOGGLE()
    lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>l", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", { noremap = true, silent = true })