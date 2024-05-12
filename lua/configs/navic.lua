return {
    "SmiteshP/nvim-navic",
    event = "User FileType",
    config = function()
        local navic = require("nvim-navic")
        navic.setup {
            lsp = {
                auto_attach = true,
                preference = nil,
            },
        }
    end,
    enabled = true
}
