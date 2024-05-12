local M = {}
local map = vim.keymap.set
local conf = require("nvconfig").ui.lsp
local wk = require("which-key")

-- export on_attach & capabilities
M.on_attach = function(client, bufnr)
    function opts(desc)
        return { buffer = bufnr, desc = "LSP " .. desc }
    end

    wk.register({
        l = {
            name = "LSP",
            f = { vim.lsp.buf.format, "Lsp [f]ormat file" },
            i = { "<cmd>LspInfo<CR>", "LSP [i]nfo" },
            h = { vim.lsp.buf.hover, "Lsp [h]elp" },
            H = { vim.lsp.buf.hover, "Lsp [H]elp signature" },
            D = { vim.lsp.buf.type_definition, "Lsp type [D]efinition" },
            r = { vim.lsp.buf.rename, "Lsp buffer [r]ename" },
            a = { vim.lsp.buf.code_action, "Lsp code [a]ctions" }
        },
        f = {
            d = { "<cmd>Telescope diagnostics<CR>", "Find [d]iagnostics" }
        }
    }, { prefix = "<leader>" })

    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)

    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', 'cr', vim.lsp.buf.references, bufopts)

    -- setup signature popup
    if conf.signature and client.server_capabilities.signatureHelpProvider then
        require("nvchad.lsp.signature").setup(client, bufnr)
    end

    if client.server_capabilities.documentSymbolProvider then
        local navic = require("nvim-navic")
        navic.attach(client, bufnr)
        vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
    end
end

-- disable semanticTokens
M.on_init = function(client, _)
    if client.supports_method "textDocument/semanticTokens" then
        client.server_capabilities.semanticTokensProvider = nil
    end
end

M.capabilities = vim.lsp.protocol.make_client_capabilities()

M.capabilities.textDocument.completion.completionItem = {
    documentationFormat = { "markdown", "plaintext" },
    snippetSupport = true,
    preselectSupport = true,
    insertReplaceSupport = true,
    labelDetailsSupport = true,
    deprecatedSupport = true,
    commitCharactersSupport = true,
    tagSupport = { valueSet = { 1 } },
    resolveSupport = {
        properties = {
            "documentation",
            "detail",
            "additionalTextEdits",
        },
    },
}

M.defaults = function()
    dofile(vim.g.base46_cache .. "lsp")
    require "nvchad.lsp"

    require("lspconfig").lua_ls.setup {
        on_attach = M.on_attach,
        capabilities = M.capabilities,
        on_init = M.on_init,

        settings = {
            Lua = {
                diagnostics = {
                    globals = { "vim" },
                },
                workspace = {
                    library = {
                        [vim.fn.expand "$VIMRUNTIME/lua"] = true,
                        [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
                        [vim.fn.stdpath "data" .. "/lazy/ui/nvchad_types"] = true,
                        [vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy"] = true,
                    },
                    maxPreload = 100000,
                    preloadFileSize = 10000,
                },
            },
        },
    }
end

return M
