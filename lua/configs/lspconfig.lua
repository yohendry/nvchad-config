local wk = require("which-key")

local on_attach = function(client, bufnr)
  -- Mappings to magical LSP functions!
  vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

  local bufopts = { noremap = true, silent = true, buffer = bufnr }

  require("configs.lsp.base").on_attach(client, bufnr)
end
local on_init = require("configs.lsp.base").on_init
local capabilities = require("configs.lsp.base").capabilities

local lspconfig = require "lspconfig"
-- astro, svelte, vue, react, html, jsx, typescript, prisma, markdown, json, tailwind, css and docker
local servers = {
  "lua_ls",
  "astro",
  "cssls",
  -- "cssmodules_ls",
  "dockerls",
  "docker_compose_language_service",
  "html",
  "jsonls",
  "marksman",
  "mdx_analyzer",
  "prismals",
  "svelte",
  "tailwindcss",
  "tsserver",
  "vuels"
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
-- lspconfig.tsserver.setup {
--   on_attach = on_attach,
--   on_init = on_init,
--   capabilities = capabilities,
-- }

local linters = {
  "biome",
  "eslint"
}

-- linters with default config
for _, lsp in ipairs(linters) do
  lspconfig[lsp].setup {}
end
