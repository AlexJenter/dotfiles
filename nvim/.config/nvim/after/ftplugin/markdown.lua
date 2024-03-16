-- print("hello markdown")

vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.number = false
vim.api.nvim_set_keymap("n", "j", "gj", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "k", "gk", { noremap = true, silent = false })
vim.g.markdown_fenced_languages = {
	"bash=sh",
	"console=sh",
	"lua",
	"zsh=sh",
}
