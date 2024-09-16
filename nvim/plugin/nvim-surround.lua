if vim.g.did_load_surround_plugin then
  return
end
vim.g.did_load_surround_plugin = true


require('nvim-surround').setup()

