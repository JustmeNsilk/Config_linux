local map = vim.keymap.set

--| Save/Quit	|---

map("n", "<leader>w", "<cmd>w<cr>")
map("n", "<leader>q", "<cmd>q<cr>")

--|	 File tree 	|---

map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")

--|		Windows management	|--

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

--| Visual mode |---

map("v", "J", ":m '>+1<cr>gv=gv")
map("v", "K", ":m '<-2<cr>gv=gv")

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

---| Multi Tab	|---

map("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>")
map("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>")
map("n", "<leader>x", "<cmd>bdelete<cr>")

---|	Telescope	|---

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>")

---|		Git 	|---

map("n", "<leader>gg", "<cmd>LazyGit<cr>")
map("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>")
map("n", "<leader>gb", "<cmd>Gitsigns blame_line<cr>")
