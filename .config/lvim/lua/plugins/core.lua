return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      -- with multiple lsp it's not annoying in this way
      lsp = { hover = { silent = true } },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            hidden = true,
            ignored = false,
          },
          files = {
            hidden = true,
            ignored = false,
          },
          grep = {
            hidden = true,
            ignored = false,
          },
        },
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- do not show time
      opts.sections.lualine_z = {}
      -- static message setup
      -- opts.sections.lualine_z = {
      --   {
      --     function()
      --       return "Hello world"
      --     end,
      --     -- icon = "⚡",
      --     -- color = { fg = "#ffffff", bg = "#ff9e64", gui = "bold" },
      --   }
      -- }
    end,
    }
}
