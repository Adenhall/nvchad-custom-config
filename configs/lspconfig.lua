local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "solargraph" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.solidity.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {'nomicfoundation-solidity-language-server', '--stdio'},
  filetypes = { 'solidity' },
  root_dir = lspconfig.util.find_git_ancestor,
  single_file_support = true,
}

-- 
-- lspconfig.pyright.setup { blabla}
