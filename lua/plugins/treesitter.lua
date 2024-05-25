return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    local settings = {
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex",
        "javascript", "html", "cpp", "python" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    }

    configs.setup(settings)

    vim.cmd "set foldmethod=expr"
    vim.cmd "set foldexpr=nvim_treesitter#foldexpr()"
    vim.cmd "set foldlevel=9"
  end
}

