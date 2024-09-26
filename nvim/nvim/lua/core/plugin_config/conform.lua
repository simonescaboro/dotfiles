require("conform").setup({
  formatters_by_ft = {
    ["lua"] = { "stylua" },
    -- Conform will run multiple formatters sequentially
    ["python"] = { "isort", "black" },
    -- Use a sub-list to run only the first available formatter
    ["javascript"] = { { "prettierd", "prettier" } },
    ["css"] = { "prettier" },
      ["scss"] = { "prettier" },
      ["less"] = { "prettier" },
      ["html"] = { "prettier" },
      ["json"] = { "prettier" },
      ["jsonc"] = { "prettier" },
      ["yaml"] = { "prettier" },
      ["markdown"] = { "prettier" },
  },
  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 500
  }
})
vim.keymap.set({"n","v"}, "<learder>mp", function()
    conform.forma({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500
    })
end, {desc = "Format file or range (in visual mode)"}
    )
