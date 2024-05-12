local map = vim.keymap.set
-- telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "Find word" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find open files" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Find help page" })
-- map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "Find old files" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "Find in current buffer" })
-- map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
-- map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
-- map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })
map("n", "<leader>eT", "<cmd>Telescope themes<CR>", { desc = "Editor themes" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find project files" })
map(
    "n",
    "<leader>fa",
    "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
    { desc = "Find all files" }
)
