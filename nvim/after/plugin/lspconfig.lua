-- Setup language servers.
local lspconfig = require('lspconfig')
vim.g.coq_settings = {auto_start = 'shut-up'}
local coq = require('coq')
require('mason').setup()
require('mason-lspconfig').setup()

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  local opts = { noremap=true, silent=true }

  buf_set_keymap('n', '<Leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('v', '<Leader>ca', '<cmd>lua vim.lsp.buf.range_code_action()<CR>', opts)

end



require("lspconfig").lua_ls.setup(coq.lsp_ensure_capabilities({
  settings = {
      Lua = {
          diagnostics = {
              globals = {"vim"},
          },
      },
  },
  }))

require("lspconfig").clangd.setup(coq.lsp_ensure_capabilities({
    on_attach = on_attach,
    -- lsp = { use_defaults = true },
    -- init_options = {
    --     root_directory = '/home/zom/c_projects/',
    --     cache = {
    --         directory = ".ccls-cache",
    --     },
    -- },
}))

-- lspconfig.lua_ls.setup(coq.lsp_ensure_capabilities())
--
--
require('lspconfig').r_language_server.setup(coq.lsp_ensure_capabilities({
    on_attach = on_attach,
}))
--
--
--
lspconfig.pylsp.setup(coq.lsp_ensure_capabilities({
    cmd = { "pylsp" },
    on_attach = on_attach,
    settings = {
        pylsp = {
            plugins = {
        -- formatter options
                autopep8 = { enabled = false },
                yapf = { enabled = false },
                -- linter options
                -- pylint = {
                --     enabled = true,
                --     executable = "pylint",
                --     args = { "--rcfile", "~/.pylintrc" },
                -- },
                ruff = { enabled = true },
                ruff_lsp = { enabled = true },
                pyflakes = { enabled = false },
                pycodestyle = { enabled = false },
                -- auto-completion options
                jedi_completion = {
                    fuzzy = true, eager = true, include_params = true },
                jedi_hover = { enabled = true },
    }}}}))
--
-- ---- Configure `ruff-lsp`.
-- local configs = require 'lspconfig.configs'
-- if not configs.ruff_lsp then
--   configs.ruff_lsp = {
--     default_config = {
--       cmd = { 'ruff-lsp' },
--       filetypes = { 'python' },
--       root_dir = require('lspconfig').util.find_git_ancestor,
--       init_options = {
--         settings = {
--           args = {}
--         }
--       }
--     }
--   }
-- end
--
require'lspconfig'.ruff_lsp.setup{
    on_attach = on_attach,
    cmd = { "ruff-lsp" },
}
--
--
--
--
--
--
--
--
--
--
--
  -- Server-specific settings. See `:help lspconfig-setup`
-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<leader>k', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

