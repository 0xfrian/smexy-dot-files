-- +---------------------+
-- |                     |
-- |   keymappings.lua   |
-- |                     |
-- +---------------------+


-- +---------+
-- | Aliases |
-- +---------+
local opts = { noremap = true, silent = true } -- Define options
local keymap = vim.api.nvim_set_keymap -- Define alias for remapping

-- +----------+
-- | Mappings |
-- +----------+

-- Modes:
--   * All          = "",
--   * Normal       = "n",
--   * Insert       = "i",
--   * Visual       = "v",
--   * Visual Block = "x",
--   * Command      = "c",
--   * Term         = "t",

-- ====== Leader Key ======
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- ====== Split Management ======
-- Create splits
keymap("n", "<Leader>v", ":vsplit<CR>", opts)
keymap("n", "<Leader>V", ":split<CR>", opts)
-- Navigation
keymap("n", "<Leader>h", "<C-w><Left>", opts)
keymap("n", "<Leader>j", "<C-w><Down>", opts)
keymap("n", "<Leader>k", "<C-w><Up>", opts)
keymap("n", "<Leader>l", "<C-w><Right>", opts)
-- Close current split
keymap("n", "<Leader>w", ":<C-w>q<CR>", opts)
-- Resize current split
keymap("n", "<C-Up>",     ":resize +2<CR>", opts)
keymap("n", "<C-Down>",   ":resize -2<CR>", opts)
keymap("n", "<C-Left>",   ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>",  ":vertical resize +2<CR>", opts)

-- ====== Buffer Management ======
-- Navigation
keymap("n", "<C-Tab>",    "<Plug>(cokeline-focus-next)", opts)
keymap("n", "<C-S-Tab>",  "<Plug>(cokeline-focus-prev)", opts)
-- Rearrange Buffers
keymap("n", "<C-[>", "<Plug>(cokeline-switch-prev)", opts)
keymap("n", "<C-]>", "<Plug>(cokeline-switch-next)", opts)
-- Close Buffer
keymap("n", "<C-w>", ":bd<CR>", opts)

-- ====== Options ======
-- Toggle Spellcheck
keymap("n", "<Leader>s", ":set spell!<CR>", opts)
-- Toggle Line Numbers
keymap("n", "<Leader>n", ":set number!<CR>", opts)
-- Toggle Linebreak
keymap("n", "<Leader>b", ":set linebreak!<CR>", opts)
-- Toggle Line Wrap
keymap("n", "<Leader>W", ":set wrap!<CR>", opts)
-- Toggle Colorizer
keymap("n", "<Leader>c", ":ColorizerToggle<CR>", opts)

-- ====== Navigation ======
-- Jump to start/end of line
keymap("", "H", "^", opts)
keymap("", "L", "$", opts)
-- Navigating up/down lines faster
keymap("", "J", "5j", opts)
keymap("", "K", "5k", opts)
-- Navigating up/down visual lines rather than logical lines
keymap("", "j", "gj", opts)
keymap("", "k", "gk", opts)

-- ====== Delete ======
-- Delete text up to start/end of line
keymap("n", "dH", "d0", opts)
keymap("n", "dL", "ld$", opts)
-- Delete word with backspace
keymap("i", "<C-BS>", "<C-w>", opts)

-- ====== Save/Quit ======
-- Saving File
keymap("n", "<C-s>", ":w<CR>", opts)
keymap("i", "<C-s>", "<Esc>:w<CR>", opts)
keymap("v", "<C-s>", "<Esc>:w<CR>", opts)
-- Exiting NeoVim (w/o saving)
keymap("n", "<C-q>", ":q!<CR>", opts)
keymap("i", "<C-q>", "<Esc>:q!<CR>", opts)
keymap("v", "<C-q>", "<Esc>:q!<CR>", opts)

-- ====== Nvim Tree ======
-- Open NvimTree
-- keymap("n", "<C-n>", "<Cmd>NvimTreeToggle<CR>", opts)
keymap("n", "<C-n>", "<Cmd>Neotree toggle<CR>", opts)

-- ====== Telescope ======
-- Find files
keymap("n", "<C-t>", "<Cmd>Telescope find_files<CR>", opts)
keymap("i", "<C-t>", "<Cmd>Telescope find_files<CR>", opts)
keymap("v", "<C-t>", "<Cmd>Telescope find_files<CR>", opts)
keymap("n", "<C-g>", "<Cmd>Telescope live_grep<CR>", opts)
keymap("i", "<C-g>", "<Cmd>Telescope live_grep<CR>", opts)
keymap("v", "<C-g>", "<Cmd>Telescope live_grep<CR>", opts)

-- ====== Trouble ======
-- Toggle Trouble window
keymap("n", "<Leader>x", "<Cmd>TroubleToggle<CR>", opts)

-- ====== Misc ======
-- Escape to Normal Mode
keymap("i", "kj", "<Esc>", opts)
-- Clear search pattern highlighting
keymap("n", "<Esc>", ":noh<CR>", opts)
-- Indent and Stay in Visual Mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
keymap("x", "<", "<gv", opts)
keymap("x", ">", ">gv", opts)

-- ===== Unmap Keys =====
keymap("", "<Space>", "<Nop>", opts)
keymap("", "q", "", opts)
keymap("", "<C-c>", "", opts)
keymap("", "<C-a>", "", opts)
keymap("", "<C-d>", "", opts)
keymap("", "<C-f>", "", opts)
keymap("", "<C-u>", "", opts)
keymap("", "<C-z>", "", opts)
keymap("", "<C-h>", "", opts)
keymap("", "<C-j>", "", opts)
keymap("", "<C-k>", "", opts)
keymap("", "<C-l>", "", opts)

