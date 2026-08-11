-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Easily move buffers left and right.
vim.keymap.set("n", "<leader>bH", "<cmd>BufferLineMovePrev<CR>", { desc = "Move Buffer Left" })
vim.keymap.set("n", "<leader>bL", "<cmd>BufferLineMoveNext<CR>", { desc = "Move Buffer Right" })

-- Keep cursor in the center of the screen when jumping half pages.
-- vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll Down and Center" })
-- vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll Up and Center" })

-- Keep search results centered on the screen.
-- vim.keymap.set("n", "n", "nzzzv", { desc = "Next Search Result (Centered)" })
-- vim.keymap.set("n", "N", "Nzzzv", { desc = "Prev Search Result (Centered)" })

-- Delete a single character without copying it to the clipboard.
vim.keymap.set("n", "x", '"_x', { desc = "Delete Char Without Copying" })

-- Keep cursor in place when joining lines.
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join Lines Keeping Cursor Still" })

-- Select the entire file easily.
-- vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select All Text" })

-- Move highlighted blocks of text up and down.
-- You can also natively use "Alt + j" and "Alt + k" with LazyVim.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Text Down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Text Up" })

-- Exit insert mode instantly by mashing 'j' and 'k' together.
-- vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit Insert Mode" })
-- vim.keymap.set("i", "kj", "<ESC>", { desc = "Exit Insert Mode" })
