local nls = require('null-ls')
local autogroup = vim.api.nvim_create_augroup("LspFormatting", {})
local opts = {
    sources = {
        nls.builtins.formatting.prettierd
    },
    on_attach = function(client, bufnr)
        if (client.supports_method('textDocument/formatting')) then
            vim.api.nvim_clear_autocmds({
                group = autogroup,
                buffer = bufnr
            })

            vim.api.nvim_create_autocmd("BufWritePre", {
                group = autogroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ bufnr = bufnr })
                end
            })

            print("none-lsp formating")
        end
    end
}
return opts
