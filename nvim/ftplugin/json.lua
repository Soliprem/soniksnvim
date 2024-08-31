-- Exit if the language server isn't available
if vim.fn.executable('vscode-json-language-server') ~= 1 then
  return
end

local root_files = {
  'config.json',
  '.git',
}

vim.lsp.start {
  name = 'json-lsp',
  cmd = { 'vscode-json-language-server' },
  root_dir = vim.fs.dirname(vim.fs.find(root_files, { upward = true })[1]),
  capabilities = require('user.lsp').make_client_capabilities(),
}

