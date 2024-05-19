return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    -- Snippet Engine & its associated nvim-cmp source
    {
      'L3MON4D3/LuaSnip',
      build = (function()
        -- Build Step is needed for regex support in snippets
        -- This step is not supported in many windows environments
        -- Remove the below condition to re-enable on windows
        if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
          return
        end
        return 'make install_jsregexp'
      end)(),

      config = function()
        require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./snippets" } })
        require("luasnip.loaders.from_snipmate").lazy_load({ paths = { "./snippets" } })
      end
    },
    'saadparwaiz1/cmp_luasnip',
    'onsails/lspkind.nvim',
    {
      'windwp/nvim-autopairs',
      event = "InsertEnter",
      config = true
      -- use opts = {} for passing setup options
      -- this is equalent to setup({}) function
    }, 
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-path',
    
  },
  config = function()
    -- See `:help cmp`
    local cmp = require 'cmp'
    local luasnip = require 'luasnip'
    local lspkind = require 'lspkind'
    luasnip.config.setup {}

    -- If you want insert `(` after select function or method item
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')

    -- cmp.event:on(
    --   'confirm_done',
    --   cmp_autopairs.on_confirm_done()
    cmp.event:on(
      'confirm_done',
      cmp_autopairs.on_confirm_done()
    )

    cmp.setup {
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },

      completion = { completeopt = 'menu,menuone,noinsert,noselect' },

      formatting = {
        fields = { "abbr", "kind" },
        expandable_indicator = true,
        format = lspkind.cmp_format({
          mode = 'symbol', -- show only symbol annotations
          maxwidth = 30, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
          -- can also be a function to dynamically calculate max width such as 
          -- maxwidth = function() return math.floor(0.45 * vim.o.columns) end,
          ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)

          before = function(_, vim_item)
            vim_item.menu = ""
            return vim_item;
          end
        })
      },

      mapping = cmp.mapping.preset.insert {
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),

        ['<Tab>'] = cmp.mapping.confirm { select = true },
      },

      sources = {
        { name = 'luasnip' },
        { name = 'nvim_lsp' },
        { name = 'path' }
      },
    }

  end,
}

