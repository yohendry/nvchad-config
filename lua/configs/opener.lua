return {
    "willthbill/opener.nvim",
    event = "VimEnter",
    config = function()
        local wk = require("which-key")

        wk.register({
            o = {
                name = "[O]pen",
                f = { function() vim.cmd('Telescope opener hidden=false') end, "Open [f]older" },
                h = { function()
                    vim.cmd('Open ~')
                    vim.cmd('Telescope find_files')
                end, "Open [h]ome folder" },
                p = { function()
                    vim.cmd('Open ~/projects')
                    vim.cmd('Telescope find_files')
                end, "Open [p]rojects folder" },
                t = {
                    name = "[O]pen [t]afi folders",
                    e = { function()
                        vim.cmd('Open ~/projects/tafieventos')
                        vim.cmd('Telescope find_files')
                    end, "Open tafi [e]ventos" },
                    w = { function()
                        vim.cmd('Open ~/projects/tafiwebexternas')
                        vim.cmd('Telescope find_files')
                    end, "Open tafi [w]eb Externas" },
                    C = { function()
                        vim.cmd('Open ~/projects/tafiwebexternas/apps/comercios')
                        vim.cmd('Telescope find_files')
                    end, "Open tafi [c]ore" },
                    u = { function()
                        vim.cmd('Open ~/projects/tafiwebexternas/packages/tafi-ui')
                        vim.cmd('Telescope find_files')
                    end, "Open tafi [c]ore" },
                    c = { function()
                        vim.cmd('Open ~/projects/taficore')
                        vim.cmd('Telescope find_files')
                    end, "Open tafi [c]ore" }
                },
                g = { function()
                    vim.cmd('Open ~/projects/ghostiwriter')
                    vim.cmd('Telescope find_files')
                end, "Open [g]hostwriter" }
            }
        }, { prefix = "<leader>" })

        require('opener').setup({
            hidden = false,           -- do not show hidden directories
            root_dir = "~",           -- search from home directory by default
            respect_gitignore = true, -- respect .gitignore files
            pre_open = function(new_dir)

            end,
            post_open = { "NERDTree", function(new_dir) print(new_dir .. " was opened") end }
        })
    end
}
