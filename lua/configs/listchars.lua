return {
    "fraso-dev/nvim-listchars",
    config = function()
        require("nvim-listchars").setup({
            save_state = false,
            listchars = {
                trail = "-",
                eol = " ",
                tab = "» ",
                nbsp = '.',
                space = '.'
            },
            exclude_filetypes = {
                "markdown",
                "alpha"
            },
            lighten_step = 10,
        })
    end,
    event = "User FileType"
}
