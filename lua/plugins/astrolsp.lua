---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    features = {
      autoformat = false,
      codelens = true,
      inlay_hints = false,
      semantic_tokens = true,
    },
    formatting = {
      format_on_save = {
        enabled = false,
        allow_filetypes = {
          "lua",
        },
      },
      timeout_ms = 1000,
    },
    ---@diagnostic disable: missing-fields
    config = {
      eslint = {
        on_attach = function(client, bufnr)
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "EslintFixAll",
          })
        end,
        filetypes = {
          "javascript",
          "javascriptreact",
          "javascript.jsx",
          "typescript",
          "typescriptreact",
          "typescript.tsx",
          "typescriptreact",
          "vue",
          "json",
          "html",
          "css",
          "scss",
          "yaml",
          "markdown",
        },
      },
      volar = {
        filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
      },
    },
    handlers = {},
    autocmds = {
      lsp_document_highlight = {
        cond = "textDocument/documentHighlight",
        {
          event = { "CursorHold", "CursorHoldI" },
          desc = "Document Highlighting",
          callback = function() vim.lsp.buf.document_highlight() end,
        },
        {
          event = { "CursorMoved", "CursorMovedI", "BufLeave" },
          desc = "Document Highlighting Clear",
          callback = function() vim.lsp.buf.clear_references() end,
        },
      },
    },
    mappings = {
      n = {
        gl = { function() vim.diagnostic.open_float() end, desc = "Hover diagnostics" },
      },
    },
    on_attach = function(client, bufnr) end,
  },
}
