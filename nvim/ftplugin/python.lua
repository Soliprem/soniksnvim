-- Exit if the language server isn't available
if vim.fn.executable('python-lsp-server') ~= 1 then
  return
end

local root_files = {
  'main.py',
  '.git',
}

vim.lsp.start {
  name = 'python-lsp-server',
  cmd = { 'python-lsp-server' },
  root_dir = vim.fs.dirname(vim.fs.find(root_files, { upward = true })[1]),
  capabilities = require('user.lsp').make_client_capabilities(),
}
