-- Exit if the language server isn't available
if vim.fn.executable('typescript-language-server') ~= 1 then
  return
end

local root_files = {
  'main.ts',
  'main.js',
  '.git',
}

vim.lsp.start {
  name = 'typescript-language-server',
  cmd = { 'typescript-language-server' },
  root_dir = vim.fs.dirname(vim.fs.find(root_files, { upward = true })[1]),
  capabilities = require('user.lsp').make_client_capabilities(),
}
