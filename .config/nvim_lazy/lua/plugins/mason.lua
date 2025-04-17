return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "gopls",
      "delve",
      "rust-analyzer",
      "golines",
    },
  },
}
