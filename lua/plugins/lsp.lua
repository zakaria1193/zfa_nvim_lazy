return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
      },

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
