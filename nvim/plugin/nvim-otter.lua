if vim.g.did_load_otter_plugin then
  return
end
vim.g.did_load_otter_plugin = true


require('nvim-otter').setup()
