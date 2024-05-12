return {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
        lsp = {
            -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
            hover = { enabled = false },
            signature = { enabled = false }
        },
        messages = {
            -- NOTE: If you enable messages, then the cmdline is enabled automatically.
            -- This is a current Neovim limitation.
            enabled = true,              -- enables the Noice messages UI
            view = "notify",             -- default view for messages
            view_error = "notify",       -- view for errors
            view_warn = "notify",        -- view for warnings
            view_history = "messages",   -- view for :messages
            view_search = "virtualtext", -- view for search count messages. Set to `false` to disable
        }
    },
    dependencies = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        "rcarriga/nvim-notify",
    }
}
