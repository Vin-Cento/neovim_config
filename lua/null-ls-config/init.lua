local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

local sources = {
	formatting.prettier,
	formatting.black.with({ extra_args = { "--fast" }, filetypes = { "python" } }),
	formatting.eslint.with({ filetypes = { "vue", "javascript" } }),
	formatting.stylua,
	formatting.clang_format,
	formatting.shellharden,
	code_actions.shellcheck,
	formatting.terrafmt,
  formatting.sql_formatter,
}

null_ls.setup({
	sources = sources,
})
