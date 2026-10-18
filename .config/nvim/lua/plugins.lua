-- Plugins are managed by the built-in vim.pack (Neovim 0.12).
-- Versions are pinned in nvim-pack-lock.json; update with :lua vim.pack.update()

-- Keep tree-sitter parsers in sync with nvim-treesitter after it updates
vim.api.nvim_create_autocmd("PackChanged", {
  callback = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kind
    if name == "nvim-treesitter" and kind == "update" then
      if not ev.data.active then vim.cmd.packadd("nvim-treesitter") end
      vim.cmd("TSUpdate")
    end
  end,
})

local gh = function(repo) return "https://github.com/" .. repo end

vim.pack.add({
  -- theme and status bar
  { src = gh("catppuccin/nvim"), name = "catppuccin" },
  gh("nvim-lualine/lualine.nvim"),
  gh("nvim-tree/nvim-web-devicons"),

  -- file explorer (replaces NERDTree)
  gh("nvim-tree/nvim-tree.lua"),

  -- fuzzy finder
  gh("nvim-lua/plenary.nvim"),
  gh("nvim-telescope/telescope.nvim"),

  -- git (gitsigns replaces signify, git-blame and git-messenger)
  gh("tpope/vim-fugitive"),
  gh("lewis6991/gitsigns.nvim"),

  -- syntax
  { src = gh("nvim-treesitter/nvim-treesitter"), version = "main" },

  -- language servers
  gh("neovim/nvim-lspconfig"),
}, { confirm = false })

-- theme
require("catppuccin").setup({
  flavour = "auto",
  background = { light = "latte", dark = "macchiato" },
})
vim.cmd.colorscheme("catppuccin")

require("lualine").setup({
  options = { theme = "auto" },
  extensions = { "nvim-tree", "fugitive" },
})

-- nvim-tree: same feel as the old NERDTree setup
require("nvim-tree").setup({
  view = { width = 28 },
  filters = { dotfiles = false, git_ignored = false }, -- show hidden and ignored files
  tab = { sync = { open = true } },                    -- open the existing tree on each new tab
  renderer = { group_empty = true },
})

require("telescope").setup({})
require("gitsigns").setup({})

-- tree-sitter: parsers are installed once (async) and then reused
local parsers = {
  "c_sharp", "ruby", "python", "embedded_template",
  "lua", "vim", "vimdoc", "query", "bash",
  "json", "yaml", "toml", "sql", "markdown", "markdown_inline",
  "html", "css", "javascript", "typescript", "tsx",
  "dockerfile", "gitcommit", "diff",
}
require("nvim-treesitter").install(parsers)

vim.api.nvim_create_autocmd("FileType", {
  callback = function(ev)
    if not pcall(vim.treesitter.start, ev.buf) then return end
    -- Tree-sitter indentation only where the parser ships indent rules
    -- (C# doesn't, so it keeps Neovim's built-in cindent)
    local lang = vim.treesitter.language.get_lang(vim.bo[ev.buf].filetype)
    if lang and vim.treesitter.query.get(lang, "indents") then
      vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
  end,
})
