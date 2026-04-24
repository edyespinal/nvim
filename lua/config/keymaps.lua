-- File management
vim.keymap.set({ "n", "v" }, "<D-s>", ":w<CR>", { silent = true, desc = "Save file" })

-- Navigate between buffers
vim.keymap.set("n", "<leader><Right>", ":bnext<CR>", { silent = true, desc = "Next buffer" })
vim.keymap.set("n", "<leader><Left>", ":bprevious<CR>", { silent = true, desc = "Previous buffer" })
vim.keymap.set("n", "<leader>q", ":bdelete<CR>", { silent = true, desc = "Close buffer" })

-- General
vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>", { silent = true, desc = "Clear search" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set("n", "<leader>A", "ggVG", { silent = true, desc = "Select all" })

vim.keymap.set("n", "K", vim.lsp.buf.hover, { silent = true, desc = "Hover documentation" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { silent = true, desc = "Go to definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { silent = true, desc = "Go to declaration" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { silent = true, desc = "Go to implementation" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { silent = true, desc = "Go to references" })
vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { silent = true, desc = "Go to type definition" })
vim.keymap.set("n", "gk", vim.lsp.buf.signature_help, { silent = true, desc = "Signature help" })
vim.keymap.set("n", "gp", "<cmd>Lspsaga peek_definition<CR>", { silent = true, desc = "Peek definition" })
vim.keymap.set("n", "gy", "<cmd>Lspsaga peek_type_definition<CR>", { silent = true, desc = "Peek type definition" })
