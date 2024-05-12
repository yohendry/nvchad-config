return {
    "lukas-reineke/indent-blankline.nvim",
    event = "User FileType",
    main = "ibl",
    config = function()
        local highlight = {
            "CursorColumn",
            "Whitespace",
        }
        local plugin = nil
        local status_ok, indent_blankline = pcall(require, "indent_blankline")
        if not status_ok then
            print("no indent_blankline")
            local ibl_status_ok, ibl = pcall(require, "ibl")
            if not ibl_status_ok then
                print("no ibl")
                return
            else
                plugin = ibl
            end
        else
            plugin = indent_blankline
        end

        plugin.setup {
            enabled = true,
            buftype_exclude = { "terminal", "nofile", "nvdash" },
            filetype_exclude = {
                "help",
                "startify",
                "dashboard",
                "lazy",
                "neogitstatus",
                "NvimTree",
                "Trouble",
                "text",
                "nvdash"
            },
            char = ">",
            context_char = "}",
            show_trailing_blankline_indent = false,
            show_first_indent_level = true,
            use_treesitter = true,
            show_current_context = true,
            indent = { highlight = highlight },
            whitespace = {
                highlight = highlight,
                remove_blankline_trail = false,
            },
        }
    end
}
