return {
    'anuvyklack/pretty-fold.nvim',
    config = function()
        require('pretty-fold').setup {
            keep_indentation = true,
            fill_char = '-',
            sections = {
                left = {
                    '-', function() return string.rep('*', vim.v.foldlevel) end, '-<<', 'content', '>>-'
                },
                right = {
                    '-<< ', 'number_of_folded_lines', ': ', 'percentage', ' >>---',
                }
            }
        }
    end,
    event = "User FileType"
}
