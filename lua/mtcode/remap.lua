vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- visual mode J & K will move selected and indent in nested statements
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- normal mode J will append line below while keeping cursor at same place
vim.keymap.set("n", "J", "mzJ`z")

-- normal mode half page motions keep cursor in center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- normal mode navigating search terms keeps cursor in center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste buffer onto highlighted word while preserving buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- yank into system clipboard with <leader>y
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete to void register in normal or visual mode with <leader>d
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")
vim.keymap.set("n", "Q", "<nop>")

-- replace all words under cursor
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- chmod +x current file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- nvim-comment remaps
vim.keymap.set('i', '<C-_>', '<Esc>gcc', { remap = true })
vim.keymap.set('n', '<C-_>', 'gcc', { remap = true })
vim.keymap.set('v', '<C-_>', 'gc', { remap = true })
