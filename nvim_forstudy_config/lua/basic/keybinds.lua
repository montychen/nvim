-- leader 键设置为空格                                    
vim.g.mapleader = " "    
    
-- 默认的键位设置函数太长了，所以这里将它们重新引用一下
vim.keybinds = {    
    gmap = vim.api.nvim_set_keymap,    
    bmap = vim.api.nvim_buf_set_keymap,    
    dgmap = vim.api.nvim_del_keymap,    
    dbmap = vim.api.nvim_buf_del_keymap,    
    opts = {noremap = true, silent = true}    
}    

-- vim.keybinds.gmap("n","<leader>f", ":RnvimrToggle<CR>", vim.keybinds.opts) 
-- vim.g.rnvimr_ranger_cmd = 'ranger --cmd="set viewmode multipane"'  -- "使用multipane单列模式，可按~手动切换成多列


-- " ------ fzf 模糊搜索
-- " fzf的:Files模糊搜索当前项目、或者当前目录和子目录中的文件、或者vim打开的第一个文件所在目录和子目录下的文件 
-- " :pwd 查看当前目录  :cd *** 可以改变当前目录
-- vim.keybinds.gmap("n","<leader>pf", ":Files<CR>", vim.keybinds.opts)

-- " fzf模糊查找当前打开的文件（buffer）
-- vim.keybinds.gmap("n","<leader>b", ":Buffers<CR>", vim.keybinds.opts)

-- " fzf模糊查找打开过的历史文件
-- vim.keybinds.gmap("n","<leader>fr", ":History<CR>", vim.keybinds.opts)

-- "fzf模糊搜索内容：当前项目、或者vim打开的第一个文件所在目录和子目录下所有文件的内容都可以搜索 
-- "buffer文件如果不属于 当前目录 则:Rg不会搜索；如果要搜索所有buffer的内容，就要用:Lines
-- vim.keybinds.gmap("n","<leader>ps", ":Rg<CR>", vim.keybinds.opts)

-- "fzf模糊搜索内容：在当前打开的所有文件(buffer)中搜索 
-- vim.keybinds.gmap("n","<leader>bs", ":Lines<CR>", vim.keybinds.opts) 


-------

-- 插入模下 jj 退出插入模式    
vim.keybinds.gmap("i", "jj", "<Esc>", vim.keybinds.opts)    
    
-- 用 H 和 L 代替 ^ 与 $    
-- vim.keybinds.gmap("n", "H", "^", vim.keybinds.opts)    
-- vim.keybinds.gmap("v", "H", "^", vim.keybinds.opts)    
-- vim.keybinds.gmap("n", "L", "$", vim.keybinds.opts)    
-- vim.keybinds.gmap("v", "L", "$", vim.keybinds.opts)    
    
-- 将 C-u 和 C-d 调整为上下滑动 10 行而不是半页    
vim.keybinds.gmap("n", "<C-u>", "10k", vim.keybinds.opts)   
vim.keybinds.gmap("n", "<C-d>", "10j", vim.keybinds.opts)   
    
-- 插入模式下的上下左右移动    
-- vim.keybinds.gmap("i", "<A-k>", "<up>", vim.keybinds.opts)    
-- vim.keybinds.gmap("i", "<A-j>", "<down>", vim.keybinds.opts)    
-- vim.keybinds.gmap("i", "<A-h>", "<left>", vim.keybinds.opts)    
-- vim.keybinds.gmap("i", "<A-l>", "<right>", vim.keybinds.opts)    
    
-- 修改分屏大小    
-- vim.keybinds.gmap("n", "<C-up>", "<cmd>res +1<CR>", vim.keybinds.opts)    
-- vim.keybinds.gmap("n", "<C-down>", "<cmd>res -1<CR>", vim.keybinds.opts)    
-- vim.keybinds.gmap("n", "<C-left>", "<cmd>vertical resize-1<CR>", vim.keybinds.opts)    
-- vim.keybinds.gmap("n", "<C-right>", "<cmd>vertical resize+1<CR>", vim.keybinds.opts)    
    
-- 正常模式下按 ESC 取消高亮显示    
vim.keybinds.gmap("n", "<ESC>", ":nohlsearch<CR>", vim.keybinds.opts)    
    
-- 通过 leader cs 切换拼写检查    
vim.keybinds.gmap("n", "<leader>cs", "<cmd>set spell!<CR>", vim.keybinds.opts)   


