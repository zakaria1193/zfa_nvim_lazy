-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
---- If you DO want the mapping to be recursive, set the "remap" option to "true"
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap comma as leader key
keymap("", "<,>", "<Nop>", opts)
vim.g.maplocalleader = ","
vim.g.mapleader = ","

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",
--

------------------------------------------------------------------------------------------------
-- Normal --
-- Warning: All <leader> based commands in normal mode should be added in whichkey.lua
-- to make full use of whichkey

-- Navigate buffers
keymap("n", "<C-PageDown>", ":bnext<CR>", opts)
keymap("n", "<C-PageUp>", ":bprevious<CR>", opts)

-- Clear highlighting
keymap("n", "<leader><space>", ":noh<CR>", opts) -- TODO Move to which key

-- Search for word under cursor on double click
keymap("n", "<2-leftMouse>", "*N", opts)

-- Next and previous tag navigation
keymap("n", "]t", ":tn<CR>", opts)
keymap("n", "[t", ":tp<CR>", opts)
keymap("n", "<C-]>", "g<C-]>", opts)

-- Quickfix navigation
keymap("n", "]q", ":cnext<CR>", opts)
keymap("n", "[q", ":cprevious<CR>", opts)


-- Next dagnostic
-- Override https://github.com/LazyVim/LazyVim/blob/master/lua/lazyvim/config/keymaps.lua#L130 until it stops using deprecated vim.diagnostic.goto_next function
keymap("n", "]d", ":lua vim.diagnostic.jump({count=1})<CR>", opts)
keymap("n", "[d", ":lua vim.diagnostic.jump({count=-1})<CR>", opts)

-- Enable/Disable copilot ]p and [p
keymap("n", "]p", "<cmd>Copilot enable<CR>", opts)
keymap("n", "[p", "<cmd>Copilot disable<CR>", opts)

-- LSP Hover (Also present with whichkey but this is for quick access)
vim.keymap.set("n", "K", vim.lsp.buf.hover)

-- Inlay hints toggler (Also present with whichkey but this is for quick access)
-- vim.keymap.set("n", "H", require("user.lsp.keymaps_helpers").toggle_inlay_hints)

-- GPT New chat
vim.keymap.set("n", "<F12>", ":GpChatToggle<CR>")

------------------------------------------------------------------------------------------------
-- Insert --

-- These plugins have some instert mode mappings
-- cmp.lua
-- lsp/init.lua
-- ..

------------------------------------------------------------------------------------------------
-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

------------------------------------------------------------------------------------------------
-- Visual Block --
-- None
