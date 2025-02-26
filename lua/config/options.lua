-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
--Remap comma as leader key
vim.api.nvim_set_keymap("", "<,>", "<Nop>", {})
vim.g.maplocalleader = ","
vim.g.mapleader = ","

---- LazyVim options

-- Autoformat disable by default (Use LazyFormat)
vim.b.autoformat = false -- TODO not working

-- Disable AI in completion, only relay on inline suggestion
vim.g.ai_cmp = false

-- Disable smooth scrolling
vim.g.snacks_animate = false

----------------

-- Close terminal after leaving (NO process exited 0 buffer left)
vim.cmd("autocmd TermClose * execute 'bdelete! ' . expand('<abuf>')")

-- Scaling in neovide
if vim.g.neovide == true then
  vim.api.nvim_set_keymap(
    "n",
    "<C-=>",
    ":lua vim.g.neovide_scale_factor = math.min(vim.g.neovide_scale_factor + 0.1,  1.0)<CR>",
    { silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<C-->",
    ":lua vim.g.neovide_scale_factor = math.max(vim.g.neovide_scale_factor - 0.1,  0.1)<CR>",
    { silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<C-+>",
    ":lua vim.g.neovide_transparency = math.min(vim.g.neovide_transparency + 0.05, 1.0)<CR>",
    { silent = true }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<C-_>",
    ":lua vim.g.neovide_transparency = math.max(vim.g.neovide_transparency - 0.05, 0.0)<CR>",
    { silent = true }
  )
  vim.api.nvim_set_keymap("n", "<C-0>", ":lua vim.g.neovide_scale_factor = 0.5<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<C-)>", ":lua vim.g.neovide_transparency = 0.9<CR>", { silent = true })
end
