local map = vim.keymap.set
-- Comment
map(
    "n",
    "<leader>/",
    function()
        require("Comment.api").toggle.linewise.current()
    end,
    { desc = "comment toggle" }
)
map(
    "v",
    "<leader>/",
    "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
    { desc = "comment toggle" }
)
