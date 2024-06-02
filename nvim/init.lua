-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")

if not configs.korean_ls then
  configs.korean_ls = {
    default_config = {
      cmd = { "korean-ls", "--stdio" },
      filetypes = { "markdown" },
      root_dir = function()
        return vim.loop.cwd()
      end,
      settings = {},
    },
  }
end
lspconfig.korean_ls.setup({
  on_attach = on_attach,
})
