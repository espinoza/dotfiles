-- Neovim 0.12+ config with Neovim's default mappings.
-- The 2021 Vimscript config is in archive/nvim-2021-vimscript.

-- nvim-tree replaces netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("options")
require("plugins")
require("lsp")
