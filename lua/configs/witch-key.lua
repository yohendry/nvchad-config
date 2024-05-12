return {
    "folke/which-key.nvim",
    config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        local wk = require("which-key")
        wk.setup({
            ignore_missing = false
        })

        wk.register({
            b = {
                name = "Buffers",
                s = { ":w<CR>", "Buffer save" },
                c = { ":bd<CR>", "Buffer Close" },
                f = { ":Telescope current_buffer_fuzzy_find<CR>", "Buffer find" },
            },
            g = { name = "Git" },
            f = {
                name = "Find",
                a = { "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>", "Find all files" },
                b = { "<cmd>Telescope buffers<CR>", "Find open files" },
                c = { "<cmd>Telescope commands<CR>", "Find commands" },
                f = { "<cmd>Telescope find_files<cr>", "Find Files" },
                h = { "<cmd>Telescope help_tags<CR>", "Find help page" },
                o = { "<cmd>Telescope oldfiles<CR>", "Find old files" },
                w = { "<cmd>Telescope live_grep<CR>", "Find word" },
                z = { "<cmd>Telescope current_buffer_fuzzy_find<CR>", "Find in current buffer" }

            },
            L = {
                name = "Lazy",
                o = { ":Lazy<CR>", "Lazy open" }
            },
            M = {
                name = "Mason",
                o = { ":Mason<CR>", "Mason open" },
                u = { ":MasonUpdate<CR>", "Mason Update" },
                i = { ":MasonInstallAll<CR>", "Mason Install" }
            },
            e = {
                name = "Editor",
                r = { "<cmd>set rnu!<CR>", "Editor relative lines" },
                l = { "<cmd>set rnu!<CR>", "Editor static lines" },
                s = { "<cmd>set shiftwidth=2 tabstop=2<CR>", "Editor indent spaces" },
                T = { "<cmd>Telescope themes<CR>", "Editor themes" },
                t = { "<cmd>set autoindent noexpandtab tabstop=4 shiftwidth=4<CR>", "Editor indent tabs" },
                d = { "<cmd>set expandtab=true shiftwidth=2 smartindent=true tabstop=2 softtabstop=2<CR>", "Editor reset tabs" }
            },
            h = {
                function()
                    local wins = vim.api.nvim_tabpage_list_wins(0)
                    local api = require "nvim-tree.api"
                    if #wins > 1 and vim.bo[vim.api.nvim_win_get_buf(wins[1])].filetype == "nvim-tree" then
                        vim.fn.win_gotoid(wins[2]) -- go to non-neo-tree window to toggle alpha
                    end
                    api.tree.close()
                    vim.cmd("Nvdash")
                end,
                "Home"
            },
            q = { ":qa!<CR>", "Exit" },
            w = { ":w!<CR>", "Quick save" },
            t = {
                name = "Terminal",
                v = {
                    function()
                        require("nvchad.term").new { pos = "vsp" }
                    end,
                    "Vertical"
                },
                h = {
                    function()
                        require("nvchad.term").new { pos = "sp" }
                    end,
                    "Horizontal"
                }
            }
        }, { prefix = "<leader>" })
    end
}
