vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

-- Disable spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

local opts = { noremap = true, silent = true }

-- save file
vim.keymap.set({ "n", "i" }, "<C-s>", "<cmd> w <CR>", opts)

-- quit file
vim.keymap.set("n", "<C-w>", "<cmd> q <CR>", opts)

-- go to normal mode
vim.keymap.set("i", "jj", "<Esc>", opts)

-- Navigate between splits
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", opts)
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", opts)
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", opts)
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", opts)

-- Vertical scroll and center
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)

-- Resize windows arrows
vim.keymap.set("n", "<Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<Left>", ":vertical -2<CR>", opts)
vim.keymap.set("n", "<Right>", ":vertical +2<CR>", opts)

-- Buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", opts)
vim.keymap.set("n", "<leader>b", "<cmd> enew <CR>", opts)

-- Window management
vim.keymap.set("n", "<leader>v", "<C-w>v", opts) --split window vertically
vim.keymap.set("n", "<leader>h", "<C-w>s", opts) --split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", opts)
vim.keymap.set("n", "<leader>xs", ":close<CR>", opts)

-- Tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", opts) -- open a new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", opts) -- close  current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", opts) -- go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", opts) -- go to previous tab

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Diagnostic keymaps
vim.keymap.set("n", "S-k", vim.diagnostic.open_float, opts)

-- terminal
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("n", "<C-`>", function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd("J")
	vim.cmd.nvim_win_set_height(0, 5)
end, opts)
