vim.g.mapleader = " "

-- Save file
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file" })

-- Save file in insert mode
vim.keymap.set("i", "<C-s>", "<Esc><cmd>w<CR>", { desc = "Save file" })

-- Quit
vim.keymap.set("n", "<leader>qq", "<cmd>qa<CR>", { desc = "Quit all" })
vim.keymap.set("n", "<leader>qw", "<cmd>q<CR>", { desc = "Quit window" })

-- Create splits
vim.keymap.set("n", "<leader>ws", "<cmd>split<CR>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>wv", "<cmd>vsplit<CR>", { desc = "Split window vertically" })

-- Move between splits
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Close current split
vim.keymap.set("n", "<leader>wq", "<cmd>close<CR>", { desc = "Close current window" })

-- Find recently opened files
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Find recent files", })

-- Move selected lines
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down", })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up", })

-- Paste without replacing clipboard
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without replacing clipboard", })

-- Delete without copying to clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without copying", })

vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>")
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line under" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")

-- Diagnostic
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostic" })
vim.keymap.set("n", "]d",
    function()
        vim.diagnostic.jump({ count = 1 })
    end,
    { desc = "Next diagnostic" })

vim.keymap.set("n", "[d",
    function()
        vim.diagnostic.jump({ count = -1 })
    end,
    { desc = "Previous diagnostic" })

-- Terminal
vim.keymap.set("n", "<leader>tt", "<cmd>terminal<CR>", { desc = "Open terminal", })

-- Escape terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode", })
