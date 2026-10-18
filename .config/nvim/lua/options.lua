local o = vim.opt

o.number = true       -- show line numbers
o.scrolloff = 8       -- number of lines from cursor to nearest limit
o.expandtab = true
o.cursorline = true
o.mouse = "a"
o.showmode = false    -- lualine shows the mode
o.signcolumn = "yes"  -- keep git and diagnostic signs from shifting the text

-- searching options
o.hlsearch = true     -- highlight matches
o.incsearch = true    -- incremental searching
o.ignorecase = true   -- searching case insensitive
o.smartcase = true    -- case sensitive if input contains at least one capital letter

-- completion menu as you type: language server first ("o" = omnifunc),
-- then words from this buffer, other windows and open buffers
o.autocomplete = true
o.complete = { "o", ".^5", "w^5", "b^5" }
o.completeopt = { "menuone", "noselect", "popup", "fuzzy" }

-- theme options
o.background = "dark"
o.termguicolors = true
