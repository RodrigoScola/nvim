vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>k", "V%")
vim.keymap.set("v", "<leader>k", "V%")
-- vim.keymap.set("v", "<leader>k", "V%")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
	require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
	require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever :
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
--vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.api.nvim_set_keymap("n", "<C-S>", ":update<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-S>", "<C-C>:update<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-S>", "<C-O>:update<CR><ESC>", { noremap = true, silent = true })

vim.keymap.set("n", "K", "kJ$")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
--vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>S", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- vim.keymap.set(
--     "n",
--     "<leader>ee",
--     "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
-- )

vim.keymap.set("n", "<leader>;", ":")

vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

-- vim.keymap.set("n", "<leader><leader>", function()
--     vim.cmd("so")
-- end)

vim.api.nvim_set_keymap("i", "<F2>", '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F2>", '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>wq", "<cmd>wq<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>q", "<cmd>q<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>w", "<cmd>w<cr>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>sc", function()
	vim.opt.cmdheight = 1 - vim.opt.cmdheight._value
end, { desc = "Toggle cmdheight" })

--vim.api.nvim_set_keymap("n", "<C-/>", "<leader>sc", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>g", ":Gitsigns toggle_signs<cr>")

vim.keymap.set("n", "<leader>i", ":EslintFixAll<cr>", { silent = true })

vim.api.nvim_set_keymap("v", "<Leader>sd", ":<C-u>'<,'>s/^/> _/<CR>:'<,'>s/$/_/<CR>:'<,'>s/> __/>/<CR>", {
	noremap = true,
	desc = "Quote selected text",
})
