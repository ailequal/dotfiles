return {
  {
    -- remove markdownlint-cli2 diagnostics for markdown; a plain table override
    -- would be deep-merged with the extra's list, so unset the key in a function
    "mfussenegger/nvim-lint",
    optional = true,
    opts = function(_, opts)
      opts.linters_by_ft = opts.linters_by_ft or {}
      opts.linters_by_ft.markdown = nil
    end,
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      win_options = {
        -- always show the markdown markup (like "comments")
        conceallevel = { rendered = 0 },
      },
    },
  },
}
