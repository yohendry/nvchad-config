return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "ahmedkhalf/project.nvim", "willthbill/opener.nvim" },
    config = function(_, opt)
        local telescope = require('telescope')
        telescope.setup {
            extensions = {
                opener = {
                    hidden = false,           -- do not show hidden directories
                    root_dir = "~/projects",  -- search from home directory by default
                    respect_gitignore = true, -- respect .gitignore files
                }
            }
        }

        require("telescope").load_extension("projects")
        require('telescope').load_extension("opener")
    end,
}
