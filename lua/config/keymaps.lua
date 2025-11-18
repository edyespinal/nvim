-- Move lines up and down
vim.keymap.set("n", "§", "ddkP")
vim.keymap.set("n", "¶", "ddp")

-- Navigate between buffers
vim.keymap.set("n", "<Right>", ":bnext<CR>")
vim.keymap.set("n", "<Left>", ":bprevious<CR>")
