-- File management
vim.keymap.set({ "n", "v" }, "<D-s>", ":w<CR>", { silent = true, desc = "Save file" })

-- Navigate between buffers
vim.keymap.set("n", "<leader><Right>", ":bnext<CR>", { silent = true, desc = "Next buffer" })
vim.keymap.set("n", "<leader><Left>", ":bprevious<CR>", { silent = true, desc = "Previous buffer" })
vim.keymap.set("n", "<leader>q", ":bdelete<CR>", { silent = true, desc = "Close buffer" })
