-- use jk to exit insert mode
vim.keymap.set("i", "jk", "<ESC>")

-- clear search highlights
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x')

--  nvim-tree
vim.keymap.set("n", "<leader>e", "NvimTreeToggle")

-- rotate buffers
vim.keymap.set("n", "<Tab>", ":bn<CR>")
vim.keymap.set("n", "<STab>", ":bp<CR>")
