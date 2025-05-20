local lspconfig = require("lspconfig")

-- Diagnostics signs (optional visual tweak)
local signs = { Error = "✘", Warn = "▲", Hint = "⚑", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Basic LSP keymaps
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local buf = event.buf
    local map = function(mode, lhs, rhs)
      vim.keymap.set(mode, lhs, rhs, { buffer = buf })
    end

    map("n", "gd", vim.lsp.buf.definition)
    map("n", "K", vim.lsp.buf.hover)
    map("n", "gi", vim.lsp.buf.implementation)
    map("n", "<leader>rn", vim.lsp.buf.rename)
    map("n", "<leader>ca", vim.lsp.buf.code_action)
    map("n", "gr", vim.lsp.buf.references)
    map("n", "<leader>f", function() vim.lsp.buf.format { async = true } end)
  end,
})

-- Load each language server
require("lsp.servers.lua_ls")
-- You can add: require("lsp.servers.pyright"), etc.
