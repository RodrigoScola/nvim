vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 5
vim.opt.softtabstop = 5
vim.opt.shiftwidth = 5
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

--vim.opt.termguicolors = true
-- Some servers have issues with backup files, see #649
vim.opt.writebackup = false

-- Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
-- delays and poor user experience
vim.opt.updatetime = 300

-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appeared/became resolved
vim.opt.signcolumn = "yes"

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

--vim.opt.setignorecase = true

--vim.opt.colorcolumn = "80"
vim.opt.timeoutlen = 150

-- Enable true colors if your terminal supports it
--vim.opt.termguicolors = true

-- Set the background color explicitly
-- vim.cmd([[
--   autocmd ColorScheme * highlight Normal ctermbg=none guibg=none
-- ]])

-- -- Reload the colorscheme on VimResized event
-- vim.cmd([[
--   autocmd VimResized * silent! colorscheme "rose-pine"
-- ]])

-- Set your preferred colorscheme
--vim.cmd("colorscheme <your-colorscheme>")
