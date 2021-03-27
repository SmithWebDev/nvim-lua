local lspconfig = require 'lspconfig'
local configs = require 'lspconfig/configs'
local lsp_status = require 'lsp-status'
local completion = require 'completion'

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp_status.register_progress()

-- Diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, {
		underline = true,
		virtual_text = false,
		signs = true,
		update_in_insert = true,
	}
)

local function default_on_attach(client)
	print('Attaching to ' .. client.name)
	completion.on_attach(client)
	lsp_status.on_attach(client)
end

local default_config = {
	on_attach = default_on_attach,
	capabilities = lsp_status.capabilities
}

local pid = vim.fn.getpid()
local cache_path = vim.fn.stdpath('cache')

-- Language Servers
lspconfig.bashls.setup{default_config}
lspconfig.cssls.setup{default_config}
lspconfig.html.setup{default_config}
lspconfig.solargraph.setup{default_config}




--configs.emmet_ls = {
--  default_config = {
--    cmd = {'emmet-ls', '--stdio'};
--    filetypes = {'html', 'css', 'sass', 'scss', 'erb'};
--    root_dir = function()
--      return vim.loop.cwd()
--    end;
--    settings = {}
--  };
--}
--
--lspconfig.emmet_ls.setup{
--  on_attach = on_attach
--}
