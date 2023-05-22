require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "html", "cssls" ,"jdtls" }
})

local on_attach = function(_, _)
	vim.keymap.set('n', 'er', vim.lsp.buf.definition, {} )
	vim.keymap.set('n', 'df', vim.lsp.buf.implementation, {} )
	vim.keymap.set('n', 'cv', vim.lsp.buf.hover, {} )
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").cssls.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
require("lspconfig").html.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}

require("lspconfig").jdtls.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
