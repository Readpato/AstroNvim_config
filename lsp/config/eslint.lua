return {
  on_attach = function()
    vim.api.nvim_create_autocmd("BufWritePre", {
      callback = function(event)
        if require("lspconfig.util").get_active_client_by_name(event.buf, "eslint") then vim.cmd "EslintFixAll" end
      end,
    })
  end,
  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "vue",
    "json",
    "html",
    "css",
    "scss",
    "yaml",
    "markdown",
  },
  settings = {
    -- helps eslint find the eslintrc when it's placed in a subfolder instead of the cwd root
    workingDirectory = { mode = "auto" },
  },
}
