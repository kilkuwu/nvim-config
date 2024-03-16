require("options")

function HorizontalSplit() 
  vim.cmd "bel sp" 
  vim.cmd "res 12"
end

vim.api.nvim_create_autocmd("TermOpen", {
  callback = function() 
    vim.cmd "startinsert" 
  end
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp",
  callback = function() 
    vim.keymap.set('n', "<F9>", function()
      vim.cmd "w"
      HorizontalSplit()
      vim.cmd "te build_cpp %:r"
    end)
    vim.keymap.set('n', '<F10>', ":vs <bar> vert res 50 <bar> te %:r")
  end
})

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

require("lazy").setup({
  { 'numtostr/comment.nvim', opts = {} },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
  { 
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    init = function()
      vim.cmd.colorscheme "gruvbox"
    end
  }
})
