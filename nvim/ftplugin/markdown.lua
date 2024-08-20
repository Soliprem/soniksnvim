-- Exit if the language server isn't available
if vim.fn.executable('markdown-oxide') ~= 1 then
  return
end

local root_files = {
  'index.md',
  '.git',
}

vim.lsp.start {
  name = 'markdown-oxide',
  cmd = { 'markdown-oxide' },
  root_dir = vim.fs.dirname(vim.fs.find(root_files, { upward = true })[1]),
  capabilities = require('user.lsp').make_client_capabilities(),
}
