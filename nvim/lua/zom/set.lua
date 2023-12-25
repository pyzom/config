vim.g.mapleader = " "
vim.opt.isfname:append("@-@")

vim.opt.guicursor = ""
vim.o.cursorline = false
vim.o.number = true
vim.o.relativenumber = true

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.smartindent = true

vim.o.wrap = false

vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.termguicolors = true

vim.o.scrolloff = 8
vim.o.signcolumn = "yes"

vim.o.updatetime = 50

vim.o.clipboard="unnamedplus"

vim.o.colorcolumn = "80"

vim.o.title = true
vim.o.titlestring = [[%t]]
vim.opt.runtimepath:append("~/.local/src/LanguageClient-neovim")


vim.cmd[[let R_csv_app = 'terminal:vd']]

vim.cmd[[let R_app = "radian"]]
vim.cmd[[let R_cmd = "R"]]
vim.cmd[[let R_hl_term = 0]]
vim.cmd[[let R_bracketed_paste = 1]]
