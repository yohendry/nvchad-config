return {
    "OlegGulevskyy/better-ts-errors.nvim",
    ft = { "ts", "typescript" },
    dependencies = { "MunifTanjim/nui.nvim" },
    config = {
        keymaps = {
            toggle = '<leader>le',          -- default '<leader>dd'
            go_to_definition = '<leader>dx' -- default '<leader>dx'
        }
    }
}
