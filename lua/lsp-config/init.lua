require("mason").setup()
require("mason-lspconfig").setup()

local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "[d", ":lua vim.diagnostic.goto_prev()<CR>", opts)
map("n", "]d", ":lua vim.diagnostic.goto_next()<CR>", opts)

local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  map("n", "gd", ":Telescope lsp_definitions<cr>", opts) --> jumps to the definition of the symbol under the cursor
  map("n", "gr", ":Telescope lsp_references<cr>", opts) --> lists all the references to the symbl under the cursor in the quickfix window
  map("n", "L", ":lua vim.lsp.buf.hover()<CR>", opts) --> information about the symbol under the cursos in a floating window
  map("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", opts) --> lists all the implementations for the symbol under the cursor in the quickfix window
  map("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>", opts) --> rename old_fname to new_fname / using treesitter refactor
  map("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", opts) --> selects a code action available at the current cursor position
  map("n", "<leader>ld", ":lua vim.diagnostic.open_float()<CR>", opts)
  map("n", "<leader>lq", ":lua vim.diagnostic.setloclist()<CR>", opts)
  map("n", "<leader>fm", ":lua vim.lsp.buf.format { async = true }<CR>", opts) --> formats the current buffer
end

require("mason-lspconfig").setup_handlers({

  function(server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })
  end,

  ["yamlls"] = function()
    require('lspconfig').yamlls.setup {
      settings = {
        yaml = {
          schemas = {
            ["https://raw.githubusercontent.com/docker/compose/master/compose/config/compose_spec.json"] = "**/docker-compose*.yml"
          },
        },
      }
    }
  end,

  ["volar"] = function()
    require("lspconfig").volar.setup({
      on_attach = on_attach,
      capabilities = capabilities,
      filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' }
    })
  end,

  ["sumneko_lua"] = function()
    require("lspconfig").sumneko_lua.setup({
      on_attach = on_attach,
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim", "use" },
          },
        },
      },
    })
  end,

})
