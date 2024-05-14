if vim.g.did_load_conform_plugin then
  return
end
vim.g.did_load_conform_plugin = true

local conform = require("conform");
conform.setup({
  timeout_ms = 500,
  lsp_fallback = true,
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    -- python = { "isort", "black" },
    -- Use a sub-list to run only the first available formatter
    -- javascript = { { "prettierd", "prettier" } },
  },
})


vim.keymap.set({ 'n' }, '==', function()
    conform.format()
end, { noremap = false, desc = 'conform format' })

vim.keymap.set({ 'n', 'v' }, '==', function()
    conform.format()
end, { noremap = false, desc = 'conform format' })
