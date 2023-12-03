local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local options = {
  server = {
    on_attach = on_attach,
    capabilities = capabilities,
  },

  dap = {
    adapter = {
      type = "executable",
      command = "lldb-vscode-14", -- defaults to lldb-vscode but different on each OS
      name = "rt_lldb",
    },
  }
}

return options
