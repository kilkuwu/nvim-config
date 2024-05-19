vim.g.mapleader = " "

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

require("options")
require("autocmds")
require("keymaps")

vim.cmd.colorscheme "vscode"

-- vim.api.nvim_set_hl(0, "Normal", { bg = nil });
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = nil });
--
-- vim.cmd "hi clear SignColumn"
-- vim.cmd "hi clear LineNr"
-- vim.cmd "hi clear ModeMsg"
-- vim.cmd "hi clear MatchParen"

