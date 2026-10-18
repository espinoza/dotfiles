-- Language servers. Server configs come from nvim-lspconfig (lsp/*.lua);
-- the binaries are installed separately (uv tool, gem).
-- C# is left to Rider; .cs files get tree-sitter highlighting only.

-- Only enable servers whose binary is installed, to avoid errors on languages
-- that are not set up yet
local servers = { "basedpyright", "ruff", "ruby_lsp" }
for _, name in ipairs(servers) do
  local cmd = vim.lsp.config[name] and vim.lsp.config[name].cmd
  if type(cmd) == "table" and vim.fn.executable(cmd[1]) == 1 then
    vim.lsp.enable(name)
  end
end

vim.diagnostic.config({ virtual_text = true, severity_sort = true })

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client and client:supports_method("textDocument/completion") then
      -- 'autocomplete' (options.lua) opens the menu; this adds auto-imports
      -- and snippets when an item is accepted
      vim.lsp.completion.enable(true, client.id, ev.buf)
    end
  end,
})
