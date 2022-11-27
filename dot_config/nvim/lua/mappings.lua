-- Utils
local function bind(mode, options)
	options = options or { noremap = true }

	return function(lhs, rhs, opts)
		opts = vim.tbl_extend("force",
			options,
			opts or {}
		)

		vim.keymap.set(mode, lhs, rhs, opts)
	end
end

-- local nmap = bind("n", { noremap = false })
local nnoremap = bind("n")
local vnoremap = bind("v")
-- local xnoremap = bind("x")
-- local inoremap = bind("i")

-- Telescope
local builtin = require('telescope.builtin')

nnoremap("<C-p>", function()
	builtin.find_files()
end)

nnoremap("<leader>ff", function()
	builtin.find_files()
end)

nnoremap("<leader>fg", function()
	builtin.live_grep()
end)

nnoremap("<leader>fb", function()
	builtin.buffers()
end)


nnoremap("<leader>fh", function()
	builtin.help_tags()
end)

-- move commands

nnoremap("<A-j>", function()
	vim.cmd [[m .+1<CR>==]]
end)


