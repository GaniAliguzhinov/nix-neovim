-- Exit if the language server isn't available
if vim.fn.executable('zls') ~= 1 then
  return
end

local root_files = {
  'build.zig',
  'Makefile',
  '.git',
}

vim.lsp.start {
  name = 'zig_ls',
  cmd = { 'zls' },
  root_dir = vim.fs.dirname(vim.fs.find(root_files, { upward = true })[1]),
  capabilities = require('user.lsp').make_client_capabilities(),
}
