vim.g.did_load_quarto_plugin = true
if vim.g.did_load_quarto_plugin then
  return
end
vim.g.did_load_quarto_plugin = true


require('quarto').setup()
