-- baseline & defaults --
-------------------------

-- neovim natively includes modern sane defaults out-of-the-box

-- upgrade the '%' key to jump between HTML tags (<div>/</div>) and code blocks
vim.cmd('packadd! matchit')


-- leader key --
----------------
vim.g.mapleader = ' ' -- prefix for custom shortcuts


-- plugins --
-------------
-- path `~/.local/share/nvim/site/pack/*/start/*`
vim.pack.add { { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } }


-- quality of life --
---------------------
-- vim.opt.hidden = true          -- allow switching between buffers without saving them first (default true)
-- vim.opt.updatetime = 300       -- faster refresh rate (default is 250s), makes plugins feel snappier
-- vim.opt.signcolumn = 'yes'     -- always show the sign column (prevents text shifting when git/LSP adds icons)
vim.opt.scrolloff = 8             -- keep 8 lines of context above/below the cursor when scrolling
vim.opt.clipboard = "unnamedplus" -- use the `+` system register for all operations (yank, delete, change, put)
vim.opt.mouse = 'a'               -- enable mouse support


-- indentation & formatting --
------------------------------
vim.opt.textwidth = 120        -- (tw) hard-wrap text to the next line after xyz characters
vim.opt.expandtab = true       -- convert tabs to spaces
vim.opt.shiftwidth = 2         -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2            -- how many columns a tab counts for
vim.opt.smartindent = true     -- automatically inserts one extra level of indentation in some cases


-- search & editing --
----------------------

vim.opt.ignorecase = true -- (ic) make searches case-insensitive by default
vim.opt.smartcase = true  -- (capital smart) search becomes case-sensitive if you type a capital letter
vim.opt.path:append('**') -- recursive search in the project
-- vim.opt.spelllang = { 'en', 'it' } -- set spell checker languages (needs `set spell` to turn on)

-- ignore common folders and binary files
vim.opt.wildignore:append('*/node_modules/*')
vim.opt.wildignore:append('*/.git/*')
vim.opt.wildignore:append('*/dist/*,*/build/*')
vim.opt.wildignore:append('*.o,*.obj,*.class,*.pyc') -- ignore compiled files
vim.opt.wildignore:append('*.png,*.jpg,*.gif,*.ico') -- ignore media files

-- clear search highlights with escape in normal mode
vim.keymap.set('n', '<esc>', ':noh<return><esc>')

-- delete a single character without copying it to the clipboard
vim.keymap.set("n", "x", '"_x', { desc = "Delete Char Without Copying" })

-- move highlighted blocks of text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Text Down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Text Up" })

-- join lines keeping cursor still
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join Lines Keeping Cursor Still" })


-- ui & display --
------------------

-- enable 24-bit true colors to match ghostty
if vim.fn.has('termguicolors') == 1 then
  vim.opt.termguicolors = true
end

-- set catppuccin macchiato theme
require("catppuccin").setup({
  flavour = "macchiato",
})
vim.cmd.colorscheme "catppuccin-nvim"

vim.opt.number = true          -- (nu) show the absolute line number on your current line
vim.opt.relativenumber = true  -- (rnu) show relative distances on all other lines
-- vim.opt.cursorcolumn = true -- highlight the entire vertical column your cursor is in
-- vim.opt.cursorline = true   -- highlight the entire horizontal line your cursor is on
-- vim.api.nvim_set_hl(0, 'CursorLine', { bg = 'lightblue', ctermbg = 'lightgrey' }) -- custom color for cursor line

vim.opt.list = true -- show invisible characters
-- define characters to show
vim.opt.listchars = { space = '·', tab = '→ ', trail = '•', nbsp = '␣' } -- custom
-- vim.opt.listchars = { space = '·', tab = '→ ', trail = '•', nbsp = '␣', eol = '↴' } -- all characters


-- netrw --
-----------

vim.g.netrw_liststyle = 1       -- 0: thin, 1: long (timestamp/size), 2: wide, 3: tree view
-- vim.g.netrw_browse_split = 4 -- when you pick a file, open it in the previous window (acts like a sidebar)
-- vim.g.netrw_winsize = 20     -- constrain the file explorer width to 20% of the screen


-- navigation --
----------------

-- move by display lines (wrapped lines) instead of logical lines
-- a count still jumps logical lines (e.g. 5j), matching the relativenumber gutter
vim.keymap.set({ 'n', 'v' }, 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, desc = "Move Down By Display Line" })
vim.keymap.set({ 'n', 'v' }, 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, desc = "Move Up By Display Line" })

-- disable standard arrow keys in normal mode
vim.keymap.set('n', '<Up>', '<Nop>')
vim.keymap.set('n', '<Down>', '<Nop>')
vim.keymap.set('n', '<Left>', '<Nop>')
vim.keymap.set('n', '<Right>', '<Nop>')

-- disable standard arrow keys in insert mode
vim.keymap.set('i', '<Up>', '<Nop>')
vim.keymap.set('i', '<Down>', '<Nop>')
vim.keymap.set('i', '<Left>', '<Nop>')
vim.keymap.set('i', '<Right>', '<Nop>')