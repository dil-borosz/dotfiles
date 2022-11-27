vim.defer_fn(function()
	pcall(require, "impatient")
end, 0)

require "plugins"
require "options"
require "mappings"
require "lsp"
require "autocmds"

