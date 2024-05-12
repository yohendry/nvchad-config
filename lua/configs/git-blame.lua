return {
    'f-person/git-blame.nvim',
    event = 'BufEnter',
    config = function()
        require('gitblame').setup {
            --Note how the `gitblame_` prefix is omitted in `setup`
            enabled = true,
            message_template = '[  <author>  <date> ] => <summary>',
            highlight_group = "Comment",
            format = '%r'
        }
    end
}
