vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*.txt", -- Giả sử file help thường có đuôi .txt, hoặc dùng "*" để áp dụng cho mọi buffer
	callback = function()
		-- Kiểm tra xem buffer hiện tại có filetype là "help" không
		if vim.bo.filetype == "help" then
			local buf = vim.api.nvim_get_current_buf()
			-- Đóng cửa sổ hiện tại nếu cần
			vim.cmd("wincmd c")
			-- Mở cửa sổ nổi
			vim.api.nvim_open_win(buf, true, {
				relative = "editor",
				width = math.floor(vim.o.columns * 0.8),
				height = math.floor(vim.o.lines * 0.8),
				col = math.floor(vim.o.columns * 0.1),
				row = math.floor(vim.o.lines * 0.1),
				border = "rounded",
			})
			-- Thiết lập các tùy chọn cho cửa sổ
			vim.cmd("setlocal nocursorline nonumber norelativenumber")

			-- Thêm keymap 'q' để đóng cửa sổ
			vim.api.nvim_buf_set_keymap(buf, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
		end
	end,
})

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank({
			higroup = "Visual", -- Nhóm highlight để sử dụng
			timeout = 200, -- Thời gian highlight (ms)
			on_macro = true, -- Hỗ trợ highlight khi dùng macro
		})
	end,
})
