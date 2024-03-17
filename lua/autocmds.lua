-- Automatically go to insert mode in terminal
vim.api.nvim_create_autocmd({ "TermOpen", "BufEnter" }, {
    pattern = { "*" },
    callback = function()
        if vim.opt.buftype:get() == "terminal" then
            vim.cmd(":startinsert")
        end
    end
})

-- Compiling in cpp file
vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp",
  callback = function() 
    local VertSplit = function() 
      vim.cmd "vs"
      vim.cmd "vert res 50"
    end


    vim.keymap.set({ 'i', 'n' }, "<F9>", function()
      vim.cmd "w"
      VertSplit()
      vim.cmd "te if ((build_cpp %:r)) {}"
    end)

    vim.keymap.set({ 'i', 'n' }, '<F10>', function() 
      VertSplit()
      vim.cmd "te %:r"
    end)

    vim.keymap.set({ 'i', 'n' }, '<C-F9>', function()
      vim.cmd("w")
      VertSplit()
      vim.cmd "te if ((build_cpp %:r)) { %:r }"
    end)
  end
})

-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
