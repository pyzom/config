vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-c>", vim.cmd.CHADopen)

vim.keymap.set("n", "<leader>bgt", function ()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none"});
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"});
end)

vim.keymap.set("n", "<leader>w", "<C-W>w")

vim.keymap.set("n", "<C-D>", "<C-D>zz")
vim.keymap.set("n", "<C-Y>", "<C-Y>zz")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


vim.keymap.set("i", "<C-H>", "<Left>")
vim.keymap.set("i", "<C-L>", "<Right>")
vim.keymap.set("i", "<C-J>", "<Down>")
vim.keymap.set("i", "<C-K>", "<Up>")


vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "<C-S>", "<Esc>:w<CR>a")
vim.keymap.set("n", "<C-Q>", ":q<CR>")
vim.keymap.set("n", "<C-S>", ":w<CR>")
vim.keymap.set("c", "w!!", "w !sudo tee > /dev/null %")
vim.keymap.set("n", ",,", "Gzz")

vim.keymap.set("n", ",sv", ":source ~/.config/nvim/init.lua<CR>")
vim.keymap.set("n", ",t", ":tag ")

vim.keymap.set("n", ",V", ":CHADopen /home/zom/.config/nvim/<CR>")
vim.keymap.set("n", ",w", ":w<CR>")
vim.keymap.set("n", ",wq", ":wq<CR>")
vim.keymap.set("n", ",q", ":q<CR>")

vim.keymap.set("n",",<Space>", "i<Space><Esc>")
vim.keymap.set("n","<C-K>", "m`O<Esc>``")
vim.keymap.set("n","<C-J>", "m`o<Esc>``")

vim.keymap.set("n","<C-Q>", ":q<CR>")
vim.keymap.set("n","<C-S>", ":w<CR>")

vim.keymap.set("n",",r", ":w <CR>:!tmux select-pane -D && tmux send-keys cd %:p:h Enter %%%run <CR>")
-- vim.keymap.set("n",",r", ":w <CR>:!tmux select-pane -D && tmux send-keys cd %:p:h Enter %%run %:p Enter")

vim.keymap.set("n", "<C-b>", ":!black %<CR>")

vim.keymap.set("n", ",ll", "ggVG")


vim.keymap.set("i", "<C-e>", "<Esc><C-e>a")

vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<leader>h", "<C-w>h")

vim.keymap.set("n", "<leader>tr", ":hi Normal guibg=NONE ctermbg=NONE<CR>")
vim.keymap.set("n", "<leader>ttr", ":colorscheme gruvbox-material<CR>")

vim.keymap.set("n", "<leader>sc", ":source ~/.config/nvim/lua/zom/")

