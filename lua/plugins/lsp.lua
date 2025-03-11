return {
  {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
          clangd = {
            capabilities = {
            textDocument = {SemanticTokens = {}},
            },
            on_attach = function(client, _)
              -- IMPORTANT: Override capabilities here.
              client.server_capabilities.semanticTokensProvider = nil
            end,
          },
      },
    },
  },

  -- ... other plugins in your configuration ...
}
