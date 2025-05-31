return {
  require("lspconfig").hls.setup({
    cmd = { "haskell-language-server-wrapper", "--lsp" },
    filetypes = { "haskell", "lhaskell", "cabal" }, -- Add cabal for HLS 1.9.0.0 and later
    root_dir = require("lspconfig.util").root_pattern(
      "hie.yaml",
      "stack.yaml",
      "cabal.project",
      "*.cabal",
      "package.yaml"
    ),
    settings = {
      haskell = {
        formattingProvider = "fourmolu", -- Or cabalfmt if you prefer
        cabalFormattingProvider = "cabalfmt",
      },
    },
  }),
}
