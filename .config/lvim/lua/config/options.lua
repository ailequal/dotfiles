-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable language spell check.
-- vim.opt.spell = false

-- Show invisible characters.
vim.opt.list = true

-- Define which invisible characters to show.
vim.opt.listchars = {
  space = "·", -- Replaces spaces with a middle dot.
  tab = "  →", -- Single arrow at the end of the tab (first cell stays free for the indent guide).
  trail = "•", -- Highlights trailing spaces at the end of a line.
  nbsp = "␣", -- Highlights non-breaking spaces.
  -- eol = "↴", -- Shows a symbol at the end of every line.
}
