local nvim_lsp = require 'lspconfig'
local configs = require 'lspconfig/configs'
local lsp_status = require 'lsp-status'
local utils = require 'smithwebdev.utils'
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true


configs.emmet_ls = {
  default_config = {
    cmd = {'emmet-ls', '--stdio'};
    filetypes = {'html', 'css', 'sass', 'scss', 'erb'};
    root_dir = function()
      return vim.loop.cwd()
    end;
    settings = {};
  };
}

nvim_lsp.emmet_ls.setup{
  on_attach = on_attach;
}
