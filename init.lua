require("options")
require("autocmds")
require("keymaps")
require("custom-commands")

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

require("lazy").setup("plugins")

-- configuration for neovide
if vim.g.neovide then 
  vim.o.guifont = "JetBrainsMono Nerd Font"
  vim.g.neovide_scroll_animation_length = 0.1
  vim.g.neovide_cursor_animation_length = 0.05
  vim.g.neovide_cursor_trail_size = 0

  -- make bracket works
  vim.keymap.set('i', '<S-CR>', '<CR>', { remap = true })
end
